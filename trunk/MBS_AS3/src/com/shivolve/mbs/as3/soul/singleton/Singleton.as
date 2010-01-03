package com.shivolve.mbs.as3.soul.singleton
{
	/**
	 * This is sample Singleton implementation.
	 * - Singleton is a class of which only a single instance can exist. 
	 * - The class has one global access point.
	 * 
	 * Action Script 3.0 does not allow private constructors in packages.
	 * 
	 * Philosophy:
	 * One is beautiful. There is only one soul in all.
	 */
	public class Singleton 
	{
		static private  var instance:Singleton;
		public function Singleton(singletonEnforcer:SingletonEnforcer) 
		{
			if (singletonEnforcer == null)
			{
				throw new Error("Use Singleton.getInstance() to get the object of Singleton.");
			}
		}
		
		public static function getInstance():Singleton 
		{
			if (Singleton.instance == null) 
			{
				var singletonEnforcer:SingletonEnforcer = new SingletonEnforcer();
				Singleton.instance = new Singleton(singletonEnforcer);
			}
			return Singleton.instance;
		}
		
		public function doThis():void 
		{
			trace("Doing this!");
		}
	}
}
class SingletonEnforcer
{
	public function SingletonEnforcer(){}
}