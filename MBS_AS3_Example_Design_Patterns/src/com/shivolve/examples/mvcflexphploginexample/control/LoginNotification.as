package com.shivolve.examples.mvcflexphploginexample.control
{
	import com.shivolve.mbs.as3.action.mind.observer.MBSNotification;
	
	public class LoginNotification extends MBSNotification
	{
		public function LoginNotification(notificationName:String, notificationBody:Object, type:String="", bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(notificationName, notificationBody, type, bubbles, cancelable);
		}
	}
}