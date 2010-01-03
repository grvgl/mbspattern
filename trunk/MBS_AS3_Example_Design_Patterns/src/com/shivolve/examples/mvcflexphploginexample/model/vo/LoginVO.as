package com.shivolve.examples.mvcflexphploginexample.model.vo
{
	
	public class LoginVO
	{
		[Bindable]
		public var username:String;
		public var password:String;
		public function LoginVO(username:String, password:String)
		{
			this.username = username;
			this.password = password;
		}
	}
}