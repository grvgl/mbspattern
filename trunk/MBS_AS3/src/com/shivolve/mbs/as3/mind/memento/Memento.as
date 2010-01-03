package com.shivolve.mbs.as3.mind.memento
{
	import com.shivolve.mbs.as3.interfaces.mind.IState;

	/**
	 * Captures and restores an object's (Originator's) internal state. 
	 */
	public class Memento
	{
		protected var id:String;
		protected var state:IState;
 
		public function Memento (id:String, state:IState)
		{
			this.id = id;
			this.state = state;
		}
 
		public function getId():String
		{
			return this.id;
		}
		
		public function getState ():IState
		{
			return this.state;
		}
	}
}