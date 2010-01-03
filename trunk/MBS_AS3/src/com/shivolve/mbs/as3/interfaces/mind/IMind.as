package com.shivolve.mbs.as3.interfaces.mind
{

	import com.shivolve.mbs.as3.interfaces.mind.INotification;
	//import com.shivolve.mbs.as3.mind.observer.Notification;
	public interface IMind
	{
		function addCommand(notificationName:String, commandClassRef:Class):void;
		function executeCommand(notification:INotification):void;
		function removeCommand(notification:INotification):ICommand;
		function hasCommand(notificationName:String):Boolean;
	}
}