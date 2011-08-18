package com.shivolve.examples.strategyexample.contexts
{
	import com.shivolve.mbs.as3.mind.strategy.Context;
	import com.shivolve.examples.strategyexample.contexts.*;
	import com.shivolve.examples.strategyexample.strategies.*;

	public class ContextThree extends Context
	{
		public function ContextThree()
		{
			super();
			strategy = new StrategyThree();
		}
	}
}