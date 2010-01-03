package com.shivolve.mbs.as3.interfaces.mind
{
	public interface IObserver
	{
		function setNotifyMethod(notifyMethod:Function):void;
		//function setNotifyContext(notifyContext:Object):void;
		function notifyObserver(notification:INotification):void;
		//function compareNotifyContext(object:Object):Boolean;
	}
}