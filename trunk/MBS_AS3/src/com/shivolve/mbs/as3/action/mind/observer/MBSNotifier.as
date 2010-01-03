package com.shivolve.mbs.as3.action.mind.observer
{
	import com.shivolve.mbs.as3.interfaces.mind.*;
	import com.shivolve.mbs.as3.mind.observer.Observer;
	
	import flash.events.EventDispatcher;

	/**
	 * ...
	 * @author Gaurav Goel
	 */
	public class MBSNotifier extends EventDispatcher // implements INotifier
	//public class MBSNotifier extends EventDispatcher implements IMBSEventDispatcher
	{
		protected var notifications:Array = null;
		protected var events:Array = null;
		static private  var instance:MBSNotifier;
		
		public function MBSNotifier(singletonEnforcer:SingletonEnforcer) 
		{
			if (singletonEnforcer == null)
			{
				throw new Error("MBSNotifier is a Singleton. Use MBSNotifier.getInstance() to get the object of Singleton.");
			}
			this.initialize();
		}
		
		private function initialize():void
		{
			this.notifications = new Array();
			this.events = new Array();
		}
		
		public static function getInstance():MBSNotifier 
		{
			trace("MBSNotifier#getInstance() ");
			if (MBSNotifier.instance == null) 
			{
				var singletonEnforcer:SingletonEnforcer = new SingletonEnforcer();
				MBSNotifier.instance = new MBSNotifier(singletonEnforcer);
			}
			return MBSNotifier.instance;
		}
		
		public function addObserver(notificationName:String, notifyMethod:Function, notifyObserver:Object, type:String = "", useCapture:Boolean = false, priority:int = 0, useWeakReference:Boolean = false):void
		{
			trace("MBSNotifier#addObserver() " +  notificationName, notifyMethod);// , notifyObserver, type, useCapture, priority, useWeakReference);
			this.notifications[notificationName] = new Observer(notifyMethod, notifyObserver);
			this.addEventListener(type, notifyMethod, useCapture, priority, useWeakReference);
		}
		
		public function notify(mbsNotification:MBSNotification):void
		{
			trace("MBSNotifier#notify(): mbsNotification.getName() = " +  mbsNotification.getName() + " mbsNotification.getBody().username = " + mbsNotification.getBody().username + " mbsNotification.getBody().password = " + mbsNotification.getBody().password + " mbsNotification.getType() = " + mbsNotification.getType());
			super.dispatchEvent(mbsNotification);
		}
		
		public function removeObserver(notificationName:String):void
		{
			this.notifications[notificationName] = null;
		}
		override public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, useWeakReference:Boolean = false):void 
		{
			super.addEventListener(type, listener, useCapture, priority, useWeakReference);
			trace("MBSNotifier#addEventListener()...",  type, listener + useCapture, priority, useWeakReference );
			var sEvent:MBSNotification = new MBSNotification("", "", type, useCapture, useWeakReference);
			var len:uint = this.events.length;
			while (len--)
			{
				if (this.events[len] == sEvent)
				{
					return;
				}
			}
			this.events.push(sEvent);
		}

		override public function hasEventListener(type:String):Boolean 
		{
			return super.hasEventListener(type);
		}
		
		override public function willTrigger(type:String):Boolean 
		{
			return super.willTrigger(type);
		}
		
		override public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false):void 
		{
			var obj:EventObject = new EventObject(type, listener, useCapture);
			var len:int = this.events.length;
			while (len--)
			{
				if (this.events[len].equals(obj))
				{
					this.events.splice(len, 1);
				}
			}
		}
		
		public function removeEventListeners():void
		{
			var len:int = this.events.length;
			var eventObject:EventObject;
			while (len--) 
			{
				eventObject = this.events.splice(len, 1)[0];
				this.removeEventListener(eventObject.type, eventObject.listener, eventObject.useCapture);
			}
		}
		
		public function removeEventsOfType(type:String):void 
		{
			var sEvent:MBSNotification = new MBSNotification(type, false);
			var len:uint = this.events.length;
			while (len--) 
			{
				sEvent = this.events[len];
				if (sEvent.type == type) 
				{
					this.events.splice(len, 1);
					this.removeEventListener(sEvent.type, sEvent.listener);
				}
			}
        }

		public function removeEventsForListener(listener:Function):void 
		{
			var len:uint = this.events.length;
			while (len--) 
			{
				var eventObject:EventObject = this.events[len];
				if (eventObject.listener == listener) 
				{
					this.events.splice(len, 1);
					this.removeEventListener(eventObject.type, eventObject.listener);
				}
			}
        }

		public function destroy():void 
		{
			this.removeEventListeners();
			//super.destroy();
		}	
	}
}

class EventObject 
{
	public var type:String;
	public var listener:Function;
	public var useCapture:Boolean;
	
	
	public function EventObject(type:String, listener:Function, useCapture:Boolean) 
	{
		this.type       = type;
		this.listener   = listener;
		this.useCapture = useCapture;
	}
	
	public function equals(eventObject:EventObject):Boolean 
	{
		return (this.type == eventObject.type && this.listener == eventObject.listener && this.useCapture == eventObject.useCapture);
	}
}

class SingletonEnforcer
{
	public function SingletonEnforcer(){}
}