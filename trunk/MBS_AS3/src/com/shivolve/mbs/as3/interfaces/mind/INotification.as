package com.shivolve.mbs.as3.interfaces.mind
{
	public interface INotification
	{
		function getName():String;
		function setBody(body:Object):void;
		function getBody():Object;
		function setType(type:String):void;
		function getType():String;
		function toString():String;
	}
}