package com.shivolve.mbs.as3.body.composite 
{
	//import com.shivolve.mbs.as3.action.mind.observer.MBSNotification;
	import com.shivolve.mbs.as3.interfaces.body.IComponent;
	import com.shivolve.mbs.as3.interfaces.mind.IMind;
	import com.shivolve.mbs.as3.interfaces.soul.ISoul;
	import com.shivolve.mbs.as3.interfaces.mind.INotification;
	
	import flash.errors.IllegalOperationError;
	
	/**
	 * ...
	 * @author Gaurav Goel
	 */
	public class Component implements IComponent
	{
		protected var soul:ISoul;
		protected var mind:IMind;
		private var parentNode:Composite;
		
		public function Component(soul:ISoul, mind:IMind = null)
		{
			this.soul = soul;
			this.mind = mind;
		}
		public function addComponent(component:Component):void
		{
			throw new IllegalOperationError("add operation not supported");
		}
		internal function setParent(compositeNode:Composite):void
		{
			this.parentNode = compositeNode;
		}
		
		public function getParent():Composite
		{
			return this.parentNode;
		}
		public function remove(component:Component):void
		{
			throw new IllegalOperationError("remove operation not supported");
		}
		public function getChild(n:int):Component
		{
			throw new IllegalOperationError("getChild operation supported for Composite, not for Component");
			return null;
		}
		// ABSTRACT Method (must be overridden in a subclass)
		public function update(notification:INotification = null):void
		{
		}		
	}
}