package com.shivolve.application.mindbodysoul
{
	import com.shivolve.application.mind.StartupCommand;
	import com.shivolve.mbs.as3.action.body.MBSFlexBody;
	import com.shivolve.mbs.as3.action.interfaces.body.IMBSBody;
	import com.shivolve.mbs.as3.action.interfaces.mind.IMBSMind;
	import com.shivolve.mbs.as3.action.interfaces.soul.IMBSSoul;
	import com.shivolve.mbs.as3.mind.observer.Notification;
	import com.shivolve.mbs.as3.action.mind.observer.MBSNotification;
	import flash.events.MouseEvent;
	
	import mx.controls.Alert;
	import mx.core.Application;

	/**
	 * ApplicationBody is the view of the application.
	 */
	public class ApplicationBody extends MBSFlexBody implements IMBSBody
	{
		//protected var app:MBS_AS3_Examples;
		protected var app:Application;
		public function ApplicationBody(soul:IMBSSoul, mind:IMBSMind = null, app:Application = null)
		{
			super(soul, mind);
			this.app = app;
			//this.addEventListeners();
		}
		
		override protected function initialize():void
		{
			//trace("ApplicationBody#initialize():this.app="+this.app);
			//this.mind.addCommand(new Notification("STARTUP", this.app, null),StartupCommand);
		}
		private function addEventListeners():void
		{
			this.addEventListener(MouseEvent.CLICK, this.onButtonClick);
		}
		private function onButtonClick(e:MouseEvent):void
		{
			switch (e.target.toString())
			{
				case "mediatorExample":
					trace("ApplicationBody#onButtonClick(): mediatorExample");
				break;
			}
		}
	}
}