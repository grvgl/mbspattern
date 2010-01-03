package com.shivolve.mbs.as3.interfaces.body
{
	/*
	 * Proxy acts as body for anybody. 
	 * Soul may have all the data, the body formed with data, but not a body to interact. Therefore, Soul uses Proxy Body.
	 * */
	public interface IProxy
	{
		function get name():String;
		function set data( data:Object ):void;
		function get data():Object; 
		function onAdd():void;
		function onRemove():void;
	}
}