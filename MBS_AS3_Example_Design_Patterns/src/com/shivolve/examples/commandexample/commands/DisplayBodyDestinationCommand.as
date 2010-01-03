package com.shivolve.examples.commandexample.commands
{
	import com.shivolve.mbs.as3.interfaces.mind.INotification;
	import com.shivolve.examples.commandexample.commands.DisplayDestinationCommand;
	import com.shivolve.examples.commandexample.bodies.DisplayDestination;
	
	
	public class DisplayBodyDestinationCommand extends DisplayDestinationCommand
	{
		private var bodyDestination_1:String="http://www.shivolve.com/category/tags/body";
		private var bodyDestination_2:String="http://www.shivolve.com/category/tags/body/feed";
		private var bodyDestination_3:String="http://www.shivolve.com/search/google?cx=004358008004328884959:jnsmuijrnje&cof=FORID:9&query=body";
		private var bodyDestinations:Array;		
		public function DisplayBodyDestinationCommand()
		{
			this.bodyDestinations = new Array(bodyDestination_1, bodyDestination_2, bodyDestination_3);
		}
		override public function execute(notification:INotification):void
		{
			super.execute(notification);
			this.displayDestination.setURL(this.bodyDestinations[this.displayDestination.getChannel()]);
		}
	}
}