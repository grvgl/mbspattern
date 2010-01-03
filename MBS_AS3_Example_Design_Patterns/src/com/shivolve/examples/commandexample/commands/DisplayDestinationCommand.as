package com.shivolve.examples.commandexample.commands
{
	
	import com.shivolve.mbs.as3.interfaces.mind.INotification;
	import com.shivolve.mbs.as3.mind.command.SimpleCommand;
	import com.shivolve.examples.commandexample.bodies.DisplayDestination;
	
	public class DisplayDestinationCommand extends SimpleCommand
	{
		protected var displayDestination:DisplayDestination;
	
		public function DisplayDestinationCommand()
		{
//			this.communityDestinations = new Array(communityDestination_1, communityDestination_2, communityDestination_3);
//			this.feedDestinations = new Array(feedDestination_1, feedDestination_2, feedDestination_3);
//			this.searchDestinations = new Array(searchDestination_1, searchDestination_2, searchDestination_3);
		}
		override public function execute(notification:INotification):void
		{
			this.displayDestination = DisplayDestination(notification.getBody());
			if(this.displayDestination.getChannel() < 0)
			{
				this.displayDestination.setChannel(2);
			}

			//DisplayDestination(notification.getBody()).text = "Search Results:";
			
		}

	}
}