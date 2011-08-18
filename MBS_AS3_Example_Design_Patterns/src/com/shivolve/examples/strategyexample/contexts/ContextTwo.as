package com.shivolve.examples.strategyexample.contexts
{
	import com.shivolve.mbs.as3.mind.strategy.Context;
	import com.shivolve.examples.strategyexample.contexts.*;
	import com.shivolve.examples.strategyexample.strategies.*;

	public class ContextTwo extends Context
	{
		
		public function ContextTwo()
		{
			super();
			strategy = new StrategyTwo();
		}
	}
}