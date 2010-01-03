package com.shivolve.examples.mvcflexphploginexample.model.delegates
{
	import com.shivolve.examples.mvcflexphploginexample.model.vo.LoginVO;
	import mx.controls.Alert;
	import mx.rpc.http.HTTPService;
	import com.shivolve.examples.mvcflexphploginexample.model.services.LoginHTTPService;
	import mx.rpc.AsyncToken;
	import mx.rpc.IResponder;
	/**
	 * LoginDelegate makes a call to the LoginHTTPService.
	 */
	public class LoginDelegate
	{
		private var service:LoginHTTPService;
		private var responder:IResponder;
		private var loginVO:LoginVO;
		public function LoginDelegate(responder:IResponder) 
		{
			this.service = new LoginHTTPService();
			this.responder = responder;
		}
		
		public function login(loginVO:LoginVO):void
		{
			this.loginVO = loginVO;
			var token:AsyncToken = this.service.send({username:loginVO.username, password:loginVO.password});
			token.addResponder(this.responder);
		}
	}

}