package com.shivolve.mbs.as3.interfaces.mind
{
	import com.shivolve.mbs.as3.mind.observer.Notification;
	public interface INotifier
	{
		//function notify(notification:Notification, body:Object=null, type:String=null):void;
		function notify(notification:Notification):void;
	}
}