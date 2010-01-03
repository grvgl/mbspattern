package com.shivolve.mbs.as3.mind.state
{
	import com.shivolve.mbs.as3.interfaces.mind.IState;
	
	internal class AbstractState implements IState
	{
		private var name:String;
		
		public function AbstractState()
		{
		}
		public function getState():String
		{
			return this.name;
		}
		public function setState(name:String):void
		{
			this.name = name;
		}

	}
}