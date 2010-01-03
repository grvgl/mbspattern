package com.shivolve.examples.commandexample.commands
{
	import com.shivolve.mbs.as3.interfaces.mind.INotification;
	import com.shivolve.examples.commandexample.commands.DisplayDestinationCommand;
	import com.shivolve.examples.commandexample.bodies.DisplayDestination;
	
	public class DisplaySoulDestinationCommand extends DisplayDestinationCommand
	{
		private var soulDestination_1:String="http://www.shivolve.com/category/tags/soul";
		private var soulDestination_2:String="http://www.shivolve.com/category/tags/soul/feed";
		private var soulDestination_3:String="http://www.shivolve.com/search/google?cx=004358008004328884959:jnsmuijrnje&cof=FORID:9&query=soul";
		private var soulDestinations:Array;	
		public function DisplaySoulDestinationCommand()
		{
			this.soulDestinations = new Array(soulDestination_1, soulDestination_2, soulDestination_3);
		}
		override public function execute(notification:INotification):void
		{
			super.execute(notification);
			this.displayDestination.setURL(this.soulDestinations[this.displayDestination.getChannel()]);
		}
	}
}