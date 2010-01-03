package com.shivolve.mbs.as3.mind.mediator
{
	/**
	 * Defines simplified communication between classes.
	 * @author Gaurav Goel
	 */
	import com.shivolve.mbs.as3.interfaces.mind.IMediator;
	import com.shivolve.mbs.as3.interfaces.mind.INotifier;
	import com.shivolve.mbs.as3.interfaces.mind.INotification;
	import com.shivolve.mbs.as3.mind.observer.*;
	public class Mediator extends Notifier implements IMediator, INotifier
	{
		protected var body:Object;
		public static const NAME:String = 'Mediator';
		
		public function Mediator(body:Object=null):void
		{
			this.body = body;	
		}

		public function getName():String 
		{	
			return Mediator.NAME;
		}

		public function setBody(body:Object):void 
		{
			this.body = body;
		}

		public function getBody():Object
		{	
			return this.body;
		}
		public function getNotifications():Array 
		{
			return new Array();
		}
		public function handleNotification(notification:INotification):void {}
		public function onAdd():void {}
		public function onRemove():void {}
	}
}