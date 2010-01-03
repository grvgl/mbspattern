package com.shivolve.mbs.as3.body.flyweight
{
	import com.shivolve.mbs.as3.body.flyweight.Flyweight;
	
	
	public class FlyweightFactory
	{
		protected var flyweightFactory:Object={};
		private var flyweight:Flyweight;
		private var flyweights:Array;
		public function FlyweightFactory()
		{
		}
		
		/**
		 * 
		 * @param	key
		 * @param	...flyweights
		 * @return ConcreteFlyweightShared
		 */
		public function getIntrinsic(key:String, ...flyweights):Flyweight
		// asdoc.exe does not accept the following line - 
		// public function getIntrinsic(key:String, ...flyweights:IFlyweight):ConcreteFlyweightShared
		{
			switch(flyweight[key] != undefined)
			{
				case true:
				break;
				case false:
				// TODO: Check the following statement. Temporary hack...
				this.flyweights = flyweights;
				flyweightFactory[key] = flyweights[0];
				flyweight = flyweightFactory[key];
				break;				
			}
			return flyweight;
		}
		
		/**
		 * 
		 * @param	key
		 * @return ConcreteFlyweightUnshared
		 */
		public function getExtrinsic(key:String):Flyweight
		{
			flyweightFactory[key] = flyweights[0];
			flyweight = flyweightFactory[key];
			return flyweight;
		}
	}
}