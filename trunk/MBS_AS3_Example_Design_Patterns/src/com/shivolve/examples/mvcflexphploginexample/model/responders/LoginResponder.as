package com.shivolve.examples.mvcflexphploginexample.model.responders
{
	import mx.controls.Alert;
	import mx.rpc.IResponder;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.events.FaultEvent;
	import com.shivolve.examples.mvcflexphploginexample.model.LoginModel;
	import com.shivolve.examples.mvcflexphploginexample.model.states.LoginState;
	
	/**
	 * Handles the response from server and updates the app model accordingly.
	 */
	public class LoginResponder implements IResponder
	{
		private var loginModel:LoginModel = LoginModel.getInstance();
		public function LoginResponder() 
		{
			
		}
		
		public function result(data:Object):void
		{
			var e:ResultEvent = ResultEvent(data);
			trace("LoginDelegate " + e.result.toString());
			if (e.result == "true")
			{
				this.loginModel.state = LoginState.LOGGED_IN_STATE;
				trace("LoginResponder#result()");
			}
			else
			{
				Alert.show("username =  demo  password = demo", "Enter correct username and password.");
			}			
		}
		
		public function fault(info:Object):void
		{
			var e:FaultEvent = FaultEvent(info);
			trace("LoginResponder#fault() ", e.fault.faultDetail, e.fault.faultCode + ": " + e.fault.faultString);
			Alert.show(e.fault.faultDetail, e.fault.faultString  + ": You may need to modify PHP Login Service URL");
		}
	}
}