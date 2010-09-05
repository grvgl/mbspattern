package com.shivolve.application.mind
{
	import com.shivolve.mbs.as3.mind.command.MacroCommand;
	import com.shivolve.application.mind.BodyPrepCommand;
	import mx.controls.Alert;
	
	/**
	 * Initializes the view and model.
	 */
	public class StartupCommand extends MacroCommand
	{
		public function StartupCommand()
		{
			super();
		}
		override protected function initialize():void
		{
			trace("StartupCommand#initialize()");
			//this.addCommand(AppSoulPrepCommand);
			this.addCommand(BodyPrepCommand);
		}
		
	}
}