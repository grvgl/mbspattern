package com.shivolve.mbs.as3.interfaces.soul
{
	import com.shivolve.mbs.as3.interfaces.body.IProxy;
	
	public interface ISoul
	{
		function addProxy(proxy:IProxy):void;
		function removeProxy(proxyName:String):IProxy;
		function getProxy(proxyName:String):IProxy;
		function hasProxy(proxyName:String):Boolean;
	}
}