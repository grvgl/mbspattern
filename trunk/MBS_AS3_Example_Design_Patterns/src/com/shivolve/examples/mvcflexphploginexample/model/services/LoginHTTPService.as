package com.shivolve.examples.mvcflexphploginexample.model.services
{
	import mx.rpc.http.HTTPService;
	/**
	 * LoginHTTPService calls the PHP service URL. It also defines the resultFormat as 'text' for the data that is expected from the service. 
	 */
	public class LoginHTTPService extends HTTPService
	{
		
		public function LoginHTTPService() 
		{
			//this.url = "http://localhost/MBS/MBS_AS3_Example_Design_Patterns/bin/mvcflexphploginexample/login.php";
			this.url = "mvcflexphploginexample/login.php";
			this.method = "POST";
			this.resultFormat = "text";
			this.showBusyCursor = true;
		}
		
	}

}