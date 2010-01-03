package com.shivolve.mbs.as3.action.body
{
	import flash.events.Event;
	
	/**
	 * Super Class for the Document Class of an FLA.
	 */
	public class MBSStage extends MBSMovieClip
	{
		
		public function MBSStage() 
		{
			if (this.stage)
			{
				this.initialize();
			}
			else
			{
				this.addEventListener(Event.ADDED_TO_STAGE, this.initialize);			
			}
		}
		
		private function initialize(e:Event = null):void 
		{
			this.removeEventListener(Event.ADDED_TO_STAGE, this.initialize);
			
			// entry point
		}
		
	}
	
}