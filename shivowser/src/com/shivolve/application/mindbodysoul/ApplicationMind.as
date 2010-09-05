package com.shivolve.application.mindbodysoul
{
	import com.shivolve.mbs.as3.action.interfaces.mind.IMBSMind;
	import com.shivolve.mbs.as3.action.mindbodysoul.MBSMind;
	import com.shivolve.mbs.as3.interfaces.soul.ISoul;
	
	/**
	 * ApplicationMind is the application controller.
	 */
	public class ApplicationMind extends MBSMind implements IMBSMind
	{
		public function ApplicationMind(soul:ISoul)
		{
			super();
		}
		
		override protected function initialize():void
		{
			super.initialize();
		}
		
	}
}