package com.shivolve.examples.mvcflexphploginexample.control
{
	import com.shivolve.mbs.as3.action.mindbodysoul.MBSMind;
	import com.shivolve.mbs.as3.interfaces.mind.IMind;
	
	import mx.controls.Alert;
	
	public class LoginControl extends MBSMind
	{
		public static  const NAME:String = 'LoginControl';
		public static const LOGIN_NOTIFICATION:String = "LoginNotification";
		protected static var instance:LoginControl;
		
		public function LoginControl(singletonEnforcer:SingletonEnforcer)
		{
			if (singletonEnforcer != null)
			{
				super();
			}
			else
			{
				throw new Error(NAME + SINGLETON_MESSAGE);
			}
		}
		
		public static function getInstance():LoginControl
		{
			if(LoginControl.instance == null)
			{
				var singletonEnforcer:SingletonEnforcer = new SingletonEnforcer();
				LoginControl.instance = new LoginControl(singletonEnforcer);	
			}
			return LoginControl.instance;
		}
		
		override protected function initialize():void
		{
			super.initialize();
			this.addCommand(LoginControl.LOGIN_NOTIFICATION, LoginCommand);
		}	
	}
}

class SingletonEnforcer 
{
	public function SingletonEnforcer(){}
}