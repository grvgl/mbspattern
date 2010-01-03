package com.shivolve.mbs.as3.mind.observer
{
	import com.shivolve.mbs.as3.interfaces.mind.INotification;
		
	public class Notification implements INotification
	{
		private var name:String;
		private var type:String;
		private var body:Object;	 
			
		public function Notification(name:String, body:Object = null, type:String = null)
		{
			this.name = name;
			this.body = body;
			this.type = type;
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
		/**
		 * 
		 * todo: Resolve the conflict of context with INotification.type.
		 */
		public function setType(type:String):void
		{
			this.type = type;
		}
		public function getType():String
		{
			return this.type;
		}
		public function toString():String
		{
			var message:String = "Notification Name: "+this.name;
			message += "\nBody:"+((this.body == null)?"null":this.body.toString());
			message += "\nType:"+((this.type == null)?"null":this.type);
			return message;
		}
	}
}