package com.shivolve.mbs.as3.mind.iterator 
{

	import com.shivolve.mbs.as3.interfaces.mind.IIterator;

	public class NullIterator implements IIterator 
	{
		
		public function hasNext():Boolean 
		{
			return false;
		}
		
		public function next():Object 
		{
			return null;
		}
		
		public function current():Object 
		{
			return null;
		}
		
		public function reset():void 
		{
		}
		
	}
}