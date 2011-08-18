package com.shivolve.examples.strategyexample.strategies 
{
	import com.shivolve.mbs.as3.interfaces.mind.IStrategy;
	
	public class StrategyThree implements IStrategy 
	{
		private var output:String; 
		
		public function StrategyThree() 
		{
			
		}
		
		public function process():String
		{
			output = "Processing Strategy Three \n";
			return output;
		}
		
	}
	
}