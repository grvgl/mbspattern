package com.shivolve.mbs.as3.mind.command
{
	/**
	 * @usage Encapsulate a command request as an object. 
	 */
	import com.shivolve.mbs.as3.interfaces.mind.ICommand;
	import com.shivolve.mbs.as3.interfaces.mind.INotifier
	import com.shivolve.mbs.as3.interfaces.mind.INotification;
	import com.shivolve.mbs.as3.mind.observer.Notifier;
	public class SimpleCommand extends Notifier implements ICommand, INotifier 
	{
		public function execute(notification:INotification):void 
		{
			trace("SimpleCommand.execute():notification.getName()="+notification.getName());
			trace("SimpleCommand.execute():notification.getBody()="+notification.getBody());
		}
	}
}