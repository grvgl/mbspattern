package com.shivolve.examples.strategyexample.strategies 
{
	import com.shivolve.mbs.as3.interfaces.mind.IStrategy;
	
	public class StrategyOne implements IStrategy 
	{
		private var output:String; 
		
		public function StrategyOne() 
		{
			
		}
		
		public function process():String
		{
			output = "Precessing Strategy One \n";
			return output;
		}
		
	}
	
}