package com.shivolve.mbs.as3.body.flyweight
{
	/**
	 * A fine-grained instance used for efficient sharing. 
	 * @author Gaurav Goel
	 */
	public class Flyweight
	{
		public function Flyweight()
		{
		}
		public function build():void
		{
			trace("build Flyweight");
		}
	}
}