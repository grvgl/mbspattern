package com.shivolve.mbs.as3.mind.iterator 
{

	import com.shivolve.mbs.as3.interfaces.mind.IIterator;

	public class ArrayIterator implements IIterator
	{
		
		private var index:uint = 0;
		private var collection:Array;
		
		public function hasNext():Boolean 
		{
			return index < collection.length && collection.length > 0;
		}
		
		public function next():Object 
		{
			return collection[index++];
		}
		
		public function reset():void 
		{
			index = 0;
		}
		
		public function ArrayIterator(collection:Array) 
		{
			collection = collection;
			index = 0;
		}
		
	}
}