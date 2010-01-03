package com.shivolve.mbs.as3.action.mindbodysoul
{
	import com.shivolve.mbs.as3.action.interfaces.soul.IMBSSoul;
	import com.shivolve.mbs.as3.mindbodysoul.Soul;
	
	/**
	 * <p>This class could extend any Flash / Flex inbuilt class. </p>
	 * 
	 * <p>While there can be many other ways, application can create its application specific Mind, Body, Soul classes 
	 * by extending the MBSMind, MBSBody, MBSSoul classes in the <code>mindbodysoul</code> package.</p>
	 */
	public class MBSSoul extends Soul implements IMBSSoul
	{
		public function MBSSoul()
		{
			super();
		}
	}
}