package com.shivolve.examples.mvcflexphploginexample.control
{
	import com.shivolve.mbs.as3.interfaces.mind.ICommand;
	import com.shivolve.mbs.as3.interfaces.mind.INotification;
	import com.shivolve.examples.mvcflexphploginexample.model.vo.LoginVO;
	import com.shivolve.examples.mvcflexphploginexample.control.LoginNotification;
	import com.shivolve.examples.mvcflexphploginexample.model.delegates.LoginDelegate;
	import com.shivolve.examples.mvcflexphploginexample.model.responders.LoginResponder;
	
	import mx.controls.Alert;
	import mx.rpc.IResponder;
	
	public class LoginCommand implements ICommand
	{
		public function LoginCommand()
		{
			trace("LoginCommand()");
		}
		
		public function execute(notification:INotification):void
		{
			var loginVO:LoginVO = LoginVO(notification.getBody());
			var loginResponder:LoginResponder = new LoginResponder();
			var loginDelegate:LoginDelegate = new LoginDelegate(loginResponder);
			loginDelegate.login(loginVO);
			trace("LoginCommand#execute(): loginVO.username = ", loginVO.username, "loginVO.password = ", loginVO.password);
		}
	}
}