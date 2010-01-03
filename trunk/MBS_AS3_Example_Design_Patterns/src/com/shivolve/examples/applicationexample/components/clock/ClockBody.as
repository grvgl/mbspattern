package com.shivolve.examples.applicationexample.components.clock 
{
	import flash.display.Sprite;
	
	
	/**
	 * ClockBody is the view of the Clock.
	 */
	public class ClockBody extends Sprite
	{
		private var clock:Sprite;
		public function ClockBody() 
		{
			this.draw();
		}
		
		private function draw():void
		{
			var radius:int = 100;
			this.clock = new Sprite();
			this.clock.graphics.beginFill(0xff22ee, 1);
			this.clock.graphics.lineStyle(3, 0x44ff33, 1, false, "normal", null, null, 3);
			this.clock.graphics.drawCircle(100, 100, radius);
			this.clock.graphics.endFill();
			this.addChild(this.clock);
		}
		
	}
	
}