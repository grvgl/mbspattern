package com.shivolve.mbs.as3.body.facade
{
	import com.shivolve.mbs.as3.mindbodysoul.Body;
	import com.shivolve.mbs.as3.interfaces.body.IBody;
	import com.shivolve.mbs.as3.interfaces.body.IFacade;
	import com.shivolve.mbs.as3.interfaces.body.IProxy;
	import com.shivolve.mbs.as3.interfaces.mind.IMediator;
	import com.shivolve.mbs.as3.interfaces.mind.IMind;
	import com.shivolve.mbs.as3.interfaces.mind.INotification;
	import com.shivolve.mbs.as3.interfaces.soul.ISoul;
	import com.shivolve.mbs.as3.mindbodysoul.Mind;
	import com.shivolve.mbs.as3.mind.observer.Notification;
	import com.shivolve.mbs.as3.mindbodysoul.Soul;
	/**
	 * <p>Facade is a single class that provides simplified interface to represent a subsystem. It makes it easy to use the subsystem.</p>
	 * 
	 * <ul>
	 * <li>Most important thing about this pattern is the intention to simplify the subsystem.</li>
	 * <li>Facade provides a simple interface for a set of complex classes of a subsystem.</li>
	 * <li>Classes of the subsystem still remain available to the clients as they would in the absence of the Facade.</li>
	 * <li>Facade uses composition to get access to the components of the subsystem.</li>
	 * </ul>
	 */
	public class Facade implements IFacade 
	{
		public static  const NAME:String = 'Facade';
		protected const SINGLETON_MESSAGE:String = NAME + " Singleton already exists.";
		protected var mind:IMind;
		protected var soul:ISoul;
		protected var body:IBody;
		protected static  var instance:IFacade;
		public function Facade(singletonEnforcer:SingletonEnforcer) 
		{
			trace("Trace from Facade.Facade()");
			if (singletonEnforcer == null)
			{
				throw new Error("Use Singleton.getInstance() to get the object of Facade." + NAME + " can only be accessed via " + NAME + ".getInstance()");
			}
			this.initialize();
		}
		protected function initialize():void 
		{
			initializeSoul();
			initializeMind();
			initializeBody();
		}
		public static function getInstance():IFacade 
		{
			if (Facade.instance == null) 
			{
				var singletonEnforcer:SingletonEnforcer = new SingletonEnforcer();
				Facade.instance = new Facade(singletonEnforcer);
			}
			return Facade.instance;
		}
		protected function initializeMind():void 
		{
			if (this.mind != null) 
			{
				return;
			}
			this.mind = new Mind();
		}
		protected function initializeSoul():void 
		{
			if (this.soul != null) 
			{
				return;
			}
			this.soul = new Soul();
		}
		protected function initializeBody():void 
		{
			if (body != null) 
			{
				return;
			}
			this.body = new Body(this.soul, this.mind);
		}
		public function addProxy (proxy:IProxy):void	
		{
			soul.addProxy (proxy);	
		}
		public function addMediator(mediator:IMediator):void 
		{
			if (body != null) 
			{
				body.addMediator(mediator);
			}
		}
		public function getMediator(mediatorName:String):IMediator 
		{
			return body.getMediator(mediatorName)  as  IMediator;
		}
		public function removeMediator(mediator:IMediator):IMediator 
		{
			var mediator:IMediator;
			if (body != null) 
			{
				mediator = body.removeMediator(mediator);
			}
			return mediator;
		}
		public function hasMediator(mediator:IMediator):Boolean 
		{
			return body.hasMediator(mediator);
		}
		public function notify(notification:Notification):void 
		{
			notifyObservers(notification);
		}
		public function notifyObservers(notification:INotification):void 
		{
			if (body != null) 
			{
				body.notifyObservers(notification);
			}
		}
	}
}
class SingletonEnforcer
{
	public function SingletonEnforcer(){}
}