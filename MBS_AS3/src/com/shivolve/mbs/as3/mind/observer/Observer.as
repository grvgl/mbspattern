package com.shivolve.mbs.as3.mind.observer
{
	/**
	 * @usage Notify change to a number of classes. 
	 */
	
	import com.shivolve.mbs.as3.interfaces.mind.INotification;
	import com.shivolve.mbs.as3.interfaces.mind.IObserver;

	public class Observer implements IObserver 
	{
		private var notify:Function;
		private var context:Object;
		
		public function Observer(notifyMethod:Function, notifyObserver:Object) 
		{
			this.setNotifyMethod(notifyMethod);
			this.setNotifyObserver(notifyObserver);
		
		}
		
		public function setNotifyMethod(notifyMethod:Function):void 
		{
			this.notify = notifyMethod;
		}
		
		public function setNotifyObserver(notifyObserver:Object):void 
		{
			this.context = notifyObserver;
		}
		
		private function getNotifyMethod():Function 
		{
			return this.notify;
		}
		
		public function notifyObserver(notification:INotification):void 
		{
			//this.getNotifyObserver().notifyObserver(this.getNotifyMethod(), notification);
			//this.getNotifyMethod().apply(this.getNotifyContext(),[notification]);
		}
		//this.getNotifyMethod().apply(this.getNotifyContext(),[notification]);
		public function getNotifyObserver(object:Object):IObserver 
		{
			//return (object === this.context) ? object : null;
			return null;
		}
	}
}