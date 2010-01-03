package com.shivolve.mbs.as3.mind.memento
{
	import com.shivolve.mbs.as3.interfaces.mind.INotification;
	import com.shivolve.mbs.as3.mind.observer.Notification;
	import com.shivolve.mbs.as3.mind.observer.Notifier;
	import com.shivolve.mbs.as3.interfaces.mind.IState;
	
	/**
	 * Originator is the object whose state needs to be stored.
	 * */
	 
	public class Originator extends Notifier
	{
		private var id:String;
		private var state:IState;
 		private var notification:Notification;
 		
 		public function Originator()
		{
		}
		
		public function setState(id:String,state:IState):void
		{
			this.id = id;
			this.state = state;
		}
 
		public function createMemento():Memento
		{
			return new Memento(this.id, this.state);
		}
 
		public function setMemento(memento:Memento):void
		{
			this.id = memento.getId();
			this.state = memento.getState();
			this.notification = new Notification("MEMENTO_UPDATED", this);
			this.notify(notification);
		}
	}
}