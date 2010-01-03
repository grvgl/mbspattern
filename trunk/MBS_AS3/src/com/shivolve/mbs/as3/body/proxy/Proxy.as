package com.shivolve.mbs.as3.body.proxy
{
	/**
	 * An object representing another object.
	 * @usage MBS uses Proxy to represent Soul.
	 */
	import com.shivolve.mbs.as3.mind.observer.Notifier;
	import com.shivolve.mbs.as3.interfaces.body.IProxy;
	import com.shivolve.mbs.as3.interfaces.mind.INotifier;
	public class Proxy extends Notifier implements IProxy, INotifier
	{
		public static var NAME:String = 'Proxy';
		protected var _name:String;
		private var _data:Object;
		public function Proxy(proxyName:String = null, dataObj:Object = null)
		{
			_name = (proxyName != null)?proxyName:NAME; 
			if (_data != null) data(dataObj);
		}
		public function get name():String
		{
			return _name;
		}		
		public function set data( data:Object ):void
		{
			_data = data;
		}
		public function get data():Object
		{
			return _data;
		}		
		public function onAdd():void
		{
		}
		public function onRemove():void
		{
		}
	}
}