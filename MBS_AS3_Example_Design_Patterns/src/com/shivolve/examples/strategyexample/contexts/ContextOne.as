package com.shivolve.examples.strategyexample.contexts
{
	import com.shivolve.examples.strategyexample.contexts.*;
	import com.shivolve.examples.strategyexample.strategies.*;
	import com.shivolve.mbs.as3.mind.strategy.Context;

	public class ContextOne extends Context
	{
		
		public function ContextOne()
		{
			super();
			strategy = new StrategyOne();

		}
	}
}