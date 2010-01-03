package com.shivolve.examples.applicationexample
{
	import com.shivolve.examples.applicationexample.components.clock.ClockBody;
	import flash.display.Sprite;
	
	/**
	 * ApplicationExample is the entry point of the example application in the <code>com.shivolve.applicationexample</code> package.
	 */
	public class ApplicationExample extends Sprite
	{
		private var body:ClockBody;
		public function ApplicationExample()
		{
			super();
			this.initialize();
		}
		private function initialize():void
		{
			this.body = new ClockBody();
			this.addChild(this.body);
		}
		
	}
}