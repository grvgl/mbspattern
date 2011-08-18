package com.shivolve.mbs.as3.mind.strategy 
{
	import com.shivolve.mbs.as3.interfaces.mind.IStrategy;
	
	/**
	 * <ul>
	 * 	<li>Encapsulates an algorithm inside a class.</li>
	 * </ul>
	 */
	public class Strategy implements IStrategy
	{
		
		public function Strategy() 
		{
			
		}
		
		public function process():void
		{
			trace("Processing Strategy \n");
		}
		
		public function getOutput():String
		{
			return "output";
		}
	}
	
}