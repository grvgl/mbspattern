package com.shivolve.mbs.as3.action.body
{
	
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.events.Event;
	
	import com.shivolve.mbs.as3.action.mind.observer.MBSNotifier;
	//import com.shivolve.mbs.as3.action.mind.observer.MBSNotification;
	
	/**
	 * This class is just a customized MovieClip at the application level. If any movieclip specific feature needs to be implemented at the application level that should be defiend in this class.
	 */
	public class MBSMovieClip extends MovieClip //implements IRemovableEventDispatcher, IDestroyable
	{
		protected var mbsNotifier:MBSNotifier;
		
		/**
			Creates a new MBSMovieClip.
		*/
		public function MBSMovieClip() 
		{
			super();
			this.mbsNotifier = MBSNotifier.getInstance();
		}
	
		/*
		override public function dispatchEvent(event:Event):Boolean 
		{
			if (this.willTrigger(event.type))
			{
				return super.dispatchEvent(event);
			}
			return true;
		}
		
		public function addObserver(notificationName:String, notifyMethod:Function, notifyObserver:Object, type:String = "", useCapture:Boolean = false, priority:int = 0, useWeakReference:Boolean = false):void
		//override public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, useWeakReference:Boolean = false):void
		{
			//super.addEventListener(type, notifyMethod, useCapture, priority, useWeakReference);
			this.mbsNotifier.addObserver(notificationName, notifyMethod, notifyObserver, type, useCapture, priority, useWeakReference)
		}

		
		override public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false):void 
		{
			super.removeEventListener(type, listener, useCapture);
			this.mbsNotifier.removeEventListener(type, listener, useCapture);
		}
		
		public function removeEventListeners():void 
		{
			this.mbsNotifier.removeEventListeners();
		}
		
		public function removeEventsOfType(type:String):void 
		{
			this.mbsNotifier.removeEventsOfType(type);
		}
		
		public function removeEventsForListener(listener:Function):void 
		{
			this.mbsNotifier.removeEventsOfListener(listener);
		}
		
		public function destroy():void 
		{
			this.removeEventListeners();
			this.mbsNotifier.destroy();
			if (this.parent != null)
			{
				this.parent.removeChild(this);
			}
		}
		*/
	}
}