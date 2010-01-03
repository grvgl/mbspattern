package com.shivolve.mbs.as3.interfaces.body
{
	/**
	 * Body is observed (an action of Mind) by others. If anyone has interest, body registers the observers. Body notifies observers in case of any change.
	 * Body part needs a mediator to interact with the body to talk about itself.
	 */
	import com.shivolve.mbs.as3.interfaces.mind.IObserver;
	import com.shivolve.mbs.as3.interfaces.mind.IMediator;
	import com.shivolve.mbs.as3.interfaces.mind.INotification;
	public interface IBody extends IComponent
	{
		function addObserver(notification:INotification, observer:IObserver):void;
		function removeObserver(notification:INotification, notifyContext:Object):void;
		function notifyObservers(notification:INotification):void;
		function addMediator(mediator:IMediator):void;
		function getMediator(mediatorName:String):IMediator;
		function removeMediator(mediator:IMediator):IMediator;
		function hasMediator(mediator:IMediator):Boolean;
	}
}