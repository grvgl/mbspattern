package com.shivolve.mbs.as3.action.mind.state
{
	/**
	* Variable name is _name instead of name because name conflicts with inherited definition mx.states:State.name in namespace public.
	*/
	import com.shivolve.mbs.as3.interfaces.mind.IState;
	import mx.states.State;
	
	public class MBSState extends State implements IState
	{
		private var _name:String;
		public function MBSState(name:String, entering:String=null, exiting:String=null, change:String=null)
		{
			this._name = name;
		}

		public function setState(name:String):void
		{
			this._name = name;
		}
		
		public function getState():String
		{
			return this._name;	
		}
	}
}