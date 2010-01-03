package com.shivolve.examples.commandexample.commands
{
	import com.shivolve.mbs.as3.interfaces.mind.INotification;
	import com.shivolve.mbs.as3.mind.command.SimpleCommand;
	import com.shivolve.examples.commandexample.commands.DisplayDestinationCommand;
	
	
	public class DisplayMindDestinationCommand extends DisplayDestinationCommand 
	{
		private var mindDestination_posts:String="http://www.shivolve.com/category/tags/mind";
		private var mindDestination_feed:String="http://www.shivolve.com/category/tags/mind/feed";
		private var mindDestination_search:String="http://www.shivolve.com/search/google?cx=004358008004328884959:jnsmuijrnje&cof=FORID:9&query=mind";	
		private var mindDestinations:Array;
		
		public function DisplayMindDestinationCommand()
		{
			this.mindDestinations = new Array(mindDestination_posts, mindDestination_feed, mindDestination_search);
		}
		
		override public function execute(notification:INotification):void
		{
			super.execute(notification);
			this.displayDestination.setURL(this.mindDestinations[this.displayDestination.getChannel()]);
		}

	}
}