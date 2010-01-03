package com.shivolve.mbs.as3.mindbodysoul 
{
	/**
	 * <p>Generally applications implement Soul as singleton.</p>
	 * 
	 * <p><b>Philosophy:</b></p>
	 * <p>Soul does not have form. So, we use a Proxy Body to refer to Soul. Remember, Proxy is just a medium to
	 * contact Soul. Proxy by itself is just a way to connect to Soul.</p>
	 * <p>Why don't we use Body to represent Soul? Because Soul does not have physical body. Proxy is just a 
	 * dummy body to perform day to day activities.</p>
	 * */
	import com.shivolve.mbs.as3.interfaces.body.IProxy;
	import com.shivolve.mbs.as3.interfaces.soul.ISoul;
	
	public class Soul implements ISoul
	{
		public static const NAME:String = 'Soul';
		protected const SINGLETON_MESSAGE:String = NAME + " Singleton already exists.";
		private var proxies:Array = null;
		
		public function Soul() 
		{
			this.initialize();
		}
		
		protected function initialize():void 
		{
			this.proxies = new Array();
		}

		public function addProxy(proxy:IProxy):void
		{
			proxies[proxy.name] = proxy;
			proxy.onAdd();
		}
		
		public function getProxy(proxyName:String):IProxy
		{
			return this.proxies[proxyName];
		}
		
		public function removeProxy(proxyName:String):IProxy
		{
			var proxy:IProxy;
			if(proxies[proxyName])
			{
				proxy = this.proxies[proxyName];
				this.proxies[proxyName] = null;
				proxy.onRemove();
			}
			return proxy;
		}
		
		public function hasProxy(proxyName:String):Boolean 
		{
			return false;
		}
	}
}