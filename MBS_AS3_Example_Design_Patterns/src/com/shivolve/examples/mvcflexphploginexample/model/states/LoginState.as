package com.shivolve.examples.mvcflexphploginexample.model.states
{
	import com.shivolve.mbs.as3.action.mind.state.MBSState;
	/**
	 * LoginState is within the model package. It maintains the states
	 * at the model. Whenever the state of the
	 * model changes, view is updated.
	 */
	public class LoginState extends MBSState
	{
		public static const LOGIN_STATE:String = "loginState";
		public static const LOGGED_IN_STATE:String = "loggedInState";
		public static const LOGGED_OUT_STATE:String = "loggedOutState";
		public function LoginState(name:String, entering:String=null, exiting:String=null, change:String=null)
		{
			super(name, entering, exiting, change);
		}
	}
}