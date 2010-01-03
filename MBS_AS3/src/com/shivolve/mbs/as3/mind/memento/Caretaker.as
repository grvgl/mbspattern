package com.shivolve.mbs.as3.mind.memento
{
	/**
	 * Caretaker stores the memento objects.
	 * */
	public class Caretaker
	{
		private var mementos:Object;
		
		public function Caretaker()
		{
			mementos = new Object();
		}
 
		public function addMemento (memento:Memento):void
		{
			mementos["allState"] = memento;
		}
 
		public function getMemento (id:String):Memento
		{
			return mementos[id];
		}
	}
}