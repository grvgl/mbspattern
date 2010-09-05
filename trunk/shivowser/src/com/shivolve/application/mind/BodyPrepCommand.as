package com.shivolve.application.mind
{
	
	import com.shivolve.application.body.SButtonBarMediator;
	import com.shivolve.mbs.as3.action.interfaces.body.IMBSBody;
	import com.shivolve.mbs.as3.action.mind.observer.MBSNotifier;
	import com.shivolve.mbs.as3.interfaces.mind.ICommand;
	import com.shivolve.mbs.as3.interfaces.mind.INotification;
	
	import flash.display.Stage;
	import flash.events.KeyboardEvent;
	
	import mx.controls.Alert;

	/**
	 * Adds the mediators to the views.
	 */
	public class BodyPrepCommand implements ICommand
	{
		private var app:Main;
		private var body:IMBSBody;
		
		public function BodyPrepCommand()
		{
		}
		
		public function execute(notification:INotification):void
		{
			this.app = notification.getBody() as Main;
			this.body = notification.getBody().getBody() as IMBSBody;
			trace("AppBodyPrepCommand#execute():notification.getBody()="+notification.getBody());
			trace("AppBodyPrepCommand#execute():app="+notification.getBody());
			trace("AppBodyPrepCommand#execute():body="+body);
			this.body.addMediator(new SButtonBarMediator(app.sButtonBar));
		}

	}
}