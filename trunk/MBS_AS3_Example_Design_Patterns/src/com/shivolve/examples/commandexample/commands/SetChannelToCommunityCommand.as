package com.shivolve.examples.commandexample.commands
{
	import com.shivolve.mbs.as3.interfaces.mind.INotification;
	import com.shivolve.mbs.as3.mind.command.SimpleCommand;
	import com.shivolve.examples.commandexample.bodies.DisplayDestination;
	
	public class SetChannelToCommunityCommand extends SimpleCommand
	{
		public function SetChannelToCommunityCommand()
		{
		}
		
		override public function execute(notification:INotification):void
		{
			DisplayDestination(notification.getBody()).setChannel(0);
			DisplayDestination(notification.getBody()).text = "Community Posts:";
		}

	}
}