package com.shivolve.application.mind
{
	
	import com.shivolve.mbs.as3.action.interfaces.body.IMBSBody;
	import com.shivolve.mbs.as3.action.mind.observer.MBSNotifier
	import com.shivolve.mbs.as3.interfaces.mind.ICommand;
	import com.shivolve.mbs.as3.interfaces.mind.INotification;
	import com.shivolve.application.body.ExamplesPanelMediator;
	import mx.controls.Alert;

	/**
	 * Adds the mediators to the views.
	 */
	public class BodyPrepCommand implements ICommand
	{
		
		public function BodyPrepCommand()
		{
		}
		
		public function execute(notification:INotification):void
		{
			var app:Main = notification.getBody() as Main;
			var body:IMBSBody = notification.getBody().getBody() as IMBSBody;
			trace("AppBodyPrepCommand#execute():notification.getBody()="+notification.getBody());
			trace("AppBodyPrepCommand#execute():app="+notification.getBody());
			trace("AppBodyPrepCommand#execute():body="+body);
			body.addMediator(new ExamplesPanelMediator(app.examplesPanel));
		}

	}
}