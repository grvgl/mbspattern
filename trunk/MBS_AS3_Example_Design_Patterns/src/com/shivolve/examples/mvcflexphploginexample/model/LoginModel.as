package com.shivolve.examples.mvcflexphploginexample.model
{
	import com.shivolve.mbs.as3.action.mindbodysoul.MBSSoul;
	import com.shivolve.examples.mvcflexphploginexample.model.states.LoginState;

	/**
	 * LoginModel is a singleton. 
	 */
	[Bindable]
	public class LoginModel extends MBSSoul
	{
		public var state:String;
		protected static var instance:LoginModel;
		public function LoginModel()
		{
			super();
		}
		
		public static function getInstance():LoginModel
		{
			if(LoginModel.instance == null)
			{
				LoginModel.instance = new LoginModel();	
			}
			return LoginModel.instance;
		}
		
		override protected function initialize():void
		{
			super.initialize();
			this.state = LoginState.LOGIN_STATE;
		}
	}
}