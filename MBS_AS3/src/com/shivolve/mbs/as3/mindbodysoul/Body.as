package com.shivolve.mbs.as3.mindbodysoul 
{
	import com.shivolve.mbs.as3.body.composite.Composite;
	import com.shivolve.mbs.as3.interfaces.body.IBody;
	import com.shivolve.mbs.as3.interfaces.mind.IMediator;
	import com.shivolve.mbs.as3.interfaces.mind.IMind;
	import com.shivolve.mbs.as3.interfaces.mind.INotification;
	import com.shivolve.mbs.as3.interfaces.mind.IObserver;
	import com.shivolve.mbs.as3.interfaces.soul.ISoul;
	import com.shivolve.mbs.as3.mind.observer.Observer;

	/**
	 * com.shivolve.mbs.as3.body contains Adapter, Bridge, Composite, Decorator, Facade, Flyweight, Proxy patterns.
	 * If Body wants to do something it contacts Mind.
	 * 
	 * Philosophy:
	 * Every body has Soul in it. Soul is omnipresent.
	 * 
	 */
	
	public class Body extends Composite implements IBody
	{
		public static  const NAME:String = 'Body';
		protected const SINGLETON_MESSAGE:String = NAME + " Singleton already exists.";
		protected var mediators : Array;
		protected var observers	: Array;
		
		public function Body(soul:ISoul, mind:IMind = null) 
		{
			super(soul, mind);
			this.initialize();
		}
		
		protected function initialize():void 
		{
			this.mediators = new Array();
			this.observers = new Array();
		}
		
		public function getSoul():ISoul
		{
			return soul;
		}
		public function getMind():IMind
		{
			return mind;
		}

		public function addObserver(notification:INotification, observer:IObserver) : void
		{
			if(!this.observers[notification.getName()]) 
			{
				this.observers[notification.getName()] = new Array();
			} 
			this.observers[notification.getName()].push(observer);	
			trace("Body#addObserver()", notification.getName(), this.observers[notification.getName()]);
		}

		public function notifyObservers(notification:INotification) : void
		{
			if(this.observers[notification.getName()] != null) 
			{
				var observers_ref:Array = observers[notification.getName()] as Array;
   				var observer:IObserver;
				for (var i:Number = 0; i < observers_ref.length; i++)
				{ 
					observer = observers_ref[ i] as IObserver;
					observer.notifyObserver(notification);
				}
			}
			trace("Body#notifiyObservers():notification.getName()="+notification.getName());
			trace("Body#notifiyObservers():this.observers[notification.getName()]="+this.observers[notification.getName()]);
		}

		public function removeObserver(notification:INotification, notifyContext:Object):void
		{
			var observers:Array = observers[notification.getName()] as Array;
			for (var i:int=0; i<observers.length; i++) 
			{
				if (Observer(observers[i]) == notifyContext) 
				{
					observers.splice(i,1);
					break;
				}
			}
			if (observers.length == 0) 
			{
				delete observers[notification.getName()];		
			}
		} 
		
		public function addMediator(mediator:IMediator) : void
		{
			mediators[mediator.getName()] = mediator;
			
			var interests:Array = mediator.getNotifications();
			if (interests.length > 0) 
			{
				var observer:Observer = new Observer(mediator.handleNotification, mediator);
				for (var i:Number=0;  i<interests.length; i++) 
				{
					this.addObserver(interests[i],  observer);
				}			
			}
			mediator.onAdd();	
		}
		public function getMediator(mediatorName:String):IMediator
		{
			return mediators[mediatorName];
		}
		
		public function removeMediator(mediator:IMediator) : IMediator
		{
			var mediator:IMediator = mediators[mediator.getName()] as IMediator;
			if (mediator) 
			{
				var interests:Array = mediator.getNotifications();
				for (var i:Number=0; i<interests.length; i++) 
				{
					removeObserver(interests[i], mediator);
				}	
				delete mediators[mediator.getName()];
				mediator.onRemove();
			}
			return mediator;
		}
		
		public function hasMediator(mediator:IMediator):Boolean
		{
			return mediators[mediator.getName()] != null;
		}
	}
}