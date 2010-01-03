package com.shivolve.mbs.as3.mind.state
{
	import com.shivolve.mbs.as3.interfaces.mind.IState;

	/**
	 * Alter an object's behavior when its state changes. 
	 */
	public class SimpleState implements IState
	{
		private var name:String;
		public function SimpleState(name:String, entering:String=null, exiting:String=null,change:String=null)
		{
			this.name = name;
		}
		
		public function setState(s:String):void
		{
			this.name = s;
		}
		
		public function getState():String
		{
			return this.name;
		}

	}
}