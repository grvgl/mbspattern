package com.shivolve.mbs.as3.body.flyweight
{
	import com.shivolve.mbs.as3.interfaces.body.IFlyweight;
	
	public class ConcreteFlyweightShared extends Flyweight implements IFlyweight
	{
		public function ConcreteFlyweightShared()
		{
		}
		
		override public function build():void
		{
			trace("build ConcreteFlyweight");
		}
	}
}