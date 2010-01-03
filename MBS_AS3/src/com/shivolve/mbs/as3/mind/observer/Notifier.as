package com.shivolve.mbs.as3.mind.observer
{
	import com.shivolve.mbs.as3.interfaces.mind.*;
	import mx.controls.Alert;
	
	public class Notifier implements INotifier
	{
		private static var instance:Notifier;
		private var observers:Array = new Array();
		
		public function notify(notification:Notification):void
		{
			Alert.show("Notifier - notifying observer...");
			notification.getBody().notifyObservers(notification);
		}
		
		public static function getInstance():Notifier
		{
			if(instance == null)
			{
				instance = new Notifier();
				
			}
			return instance;
		}
		
		public function addObserver(notificationName:String, notifyMethod:Function, notifyObserver:Object):void
		{
			trace("Notifier#addObserver(): notificationName = ", notificationName, " notifyMethod = ", notifyMethod, " notifyObserver = ", notifyObserver);
			this.observers[notificationName] = new Observer(notifyMethod, notifyObserver);
		}
	}
}