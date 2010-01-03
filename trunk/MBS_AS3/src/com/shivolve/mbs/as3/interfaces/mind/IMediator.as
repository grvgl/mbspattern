package com.shivolve.mbs.as3.interfaces.mind
{
	public interface IMediator
	{
		function getName():String;
		function getBody():Object;
		function setBody(body:Object ):void;
		function getNotifications():Array;
		function handleNotification(notification:INotification):void;
		function onAdd():void;
		function onRemove():void;
	}
}