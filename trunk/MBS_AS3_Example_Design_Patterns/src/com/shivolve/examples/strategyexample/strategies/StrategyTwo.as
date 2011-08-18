package com.shivolve.examples.strategyexample.strategies 
{
	import com.shivolve.mbs.as3.interfaces.mind.IStrategy;
	
	public class StrategyTwo implements IStrategy 
	{
		private var output:String;
		
		public function StrategyTwo() 
		{
		}
		
		public function process():String
		{
			output = "Processing Strategy Two \n";
			return output;
		}

	}
	
}