package com.shivolve.mbs.as3.mind.strategy
{
	import com.shivolve.mbs.as3.interfaces.mind.IStrategy;
	import flash.utils.getQualifiedClassName;

	public class Context
	{
		protected var strategy:IStrategy;
		
		public var result:String;
		
		public function Context()
		{
		}
		
		public function doProcess():String
		{
			return "Object of " + getQualifiedClassName(this).split("::")[1] + " " + strategy.process();
		}
	}
}