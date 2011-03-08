package com.shivolve.mbs.as3.mindbodysoul 
{	
	/**
	 * Mind keeps a reference of the soul. Mind often gets confused that it is the real soul.
	 * Mind needs a body to survive. So, mind has a reference to Body.
	 * 
	 */
	import com.shivolve.mbs.as3.interfaces.body.IBody;
	import com.shivolve.mbs.as3.interfaces.mind.ICommand;
	import com.shivolve.mbs.as3.interfaces.mind.IMind;
	import com.shivolve.mbs.as3.interfaces.mind.INotification;
	import com.shivolve.mbs.as3.interfaces.soul.ISoul;
	import com.shivolve.mbs.as3.mind.observer.Notification;
	import com.shivolve.mbs.as3.mind.observer.Notifier;
	//import mx.controls.Alert;
	
	
	public class Mind implements IMind
	{
		
		public static  const NAME:String = 'Mind';
		protected const SINGLETON_MESSAGE:String = NAME + " Singleton already exists.";
		
		protected var commands:Array;
		
		private var body:IBody;
		private var soul:ISoul;
		private var command:ICommand;
		
		public function Mind() 
		{
			this.initialize();
		}
		
		protected function initialize():void 
		{
			trace("Mind#initialize()");
			this.commands = new Array();
		}
		
		protected function getCommand(notificationName:String):Class
		{
			var command:Class = commands[notificationName];
			return command;
		}
		
		
		public function addCommand(notificationName:String, commandClassRef:Class) : void
		{
			trace("Mind.addCommand():notificationName="+notificationName+" commandClassRef="+commandClassRef);
			if(notificationName != null)
			{
				this.commands[notificationName] = commandClassRef;
			}
			var notification:Notification = new Notification(notificationName, new Object(), "type")
			Notifier.getInstance().addObserver(notificationName, executeCommand, notification);
		}
		
		public function executeCommand(notification:INotification):void
		{
			trace("Mind#executeCommand(): notification.getName() = " + notification.getName());
			var command:ICommand = new commands[notification.getName()]();
			command.execute(notification);
		}
		
		public function removeCommand(notification:INotification):ICommand 
		{
			return command;
		}
		
		public function hasCommand(notificationName:String):Boolean
		{
			return false;
		}
		
		public function getBody():IBody
		{
			return body;
		}
		
		public function getSoul():ISoul
		{
			return soul;
		}	
		public function setSoul(soul:ISoul):void
		{
			this.soul = soul;
		}	
	}
}