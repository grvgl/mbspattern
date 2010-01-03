package com.shivolve.mbs.as3.interfaces.mind 
{

	public interface IIterator 
	{
		function reset():void;
		function next():Object;
		function hasNext():Boolean;		
	}
}