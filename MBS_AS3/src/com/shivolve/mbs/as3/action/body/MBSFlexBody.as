package com.shivolve.mbs.as3.action.body
{
	import com.shivolve.mbs.as3.action.interfaces.mind.IMBSMind;
	import com.shivolve.mbs.as3.action.interfaces.soul.IMBSSoul;
	import com.shivolve.mbs.as3.action.mind.observer.MBSNotifier;
	import com.shivolve.mbs.as3.mindbodysoul.Body;
	import com.shivolve.mbs.as3.body.composite.Component;
	import com.shivolve.mbs.as3.interfaces.body.IBody;
	import com.shivolve.mbs.as3.interfaces.mind.IMediator;
	import com.shivolve.mbs.as3.interfaces.mind.INotification;
	import com.shivolve.mbs.as3.interfaces.mind.IObserver;
	
	import mx.core.Application;
	import mx.core.FlexSprite;
	
	/**
	 * Super Class to use Flex Sprites
	 */
	public class MBSFlexBody extends FlexSprite implements IBody
	{
		protected var mbsNotifier:MBSNotifier;
		private var body:Body;
		protected var soul:IMBSSoul;
		protected var mind:IMBSMind;
		public function MBSFlexBody(soul:IMBSSoul, mind:IMBSMind = null):void 
		{
			this.soul = soul;
			this.mind = mind;
			this.body = new Body(this.soul, this.mind);
			this.initialize();
		}
		protected function initialize():void
		{
			
		}
		public function addObserver(notification:INotification, observer:IObserver):void
		{
			body.addObserver(notification, observer);
		}
		public function removeObserver(notification:INotification, notifyContext:Object):void
		{
			body.removeObserver(notification, notifyContext);
		}
		public function notifyObservers(notification:INotification):void
		{
			trace("MBSFlexBody.notifyObservers() called.");
			body.notifyObservers(notification);
		}
		public function addMediator(mediator:IMediator):void
		{
			trace("MBSFlexBody.addMediator(): called.");
			body.addMediator(mediator);
		}
		public function getMediator(mediatorName:String):IMediator
		{
			return body.getMediator(mediatorName);
		}
		public function removeMediator(mediator:IMediator):IMediator
		{
			return body.removeMediator(mediator);
		}
		public function hasMediator(mediator:IMediator):Boolean
		{
			return body.hasMediator(mediator);
		}
		public function addComponent(component:Component):void
		{
			
		}
		
		public function destroy():void
		{
		    if (this.parent != null)
			{
                this.parent.removeChild(this);
			}
		}
		
		public function get measuredHeight():Number
		{
			return 0;
		}
		
		public function get measuredWidth():Number
		{
			return 0;
		}
		
		public function move(x:Number, y:Number):void
		{
			
		}
		public function setActualSize(newWidth:Number, newHeight:Number):void
		{
			
		}
	}
}