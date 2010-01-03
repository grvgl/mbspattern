package com.shivolve.mbs.as3.action.mind.observer 
{
	import com.shivolve.mbs.as3.interfaces.mind.INotification;
	import com.shivolve.mbs.as3.action.interfaces.mind.IMBSNotification;
	import flash.events.Event;
	
	/**
	 * MBSNotification is custom MBS event that extends the Flash event.
	 * 
	 */
	public class MBSNotification extends Event implements IMBSNotification
	{
		private var _type:String;
		private var _listener:Function;
		
		private var _notificationType:String;
		private var name:String;
		private var body:Object;
		public function MBSNotification(notificationName:String, notificationBody:Object, type:String = "", bubbles:Boolean = false, cancelable:Boolean = false)
		{
			this.name = notificationName;
			this.body = notificationBody;
			super(type, bubbles, cancelable);
		}
			
		/**
		 * todo: Replace listener with observer?
		 */
		public function get listener():Function { return _listener; }
		
		public function set listener(value:Function):void 
		{
			_listener = value;
		}
		
		public function setName(notificationName:String):void
		{
			this.name = notificationName;
		}
		public function getName():String
		{
			return this.name;
		}
		
		public function setBody(body:Object):void
		{
			this.body = body;
		}
		public function getBody():Object
		{
			return this.body;
		}
		
		public function setType(_notificationType:String):void
		{
			this._notificationType = _notificationType;
		}
		
		public function getType():String
		{
			return this.type;
		}
		/*
		override public function toString():String
		{
			
		}
		*/
	}
}