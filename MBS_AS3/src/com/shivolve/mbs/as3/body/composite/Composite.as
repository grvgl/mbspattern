package com.shivolve.mbs.as3.body.composite 
{
	import com.shivolve.mbs.as3.interfaces.mind.INotification;
	import com.shivolve.mbs.as3.interfaces.mind.IMind;
	import com.shivolve.mbs.as3.interfaces.soul.ISoul;
	/**
	 * A tree structure of simple and composite objects.
	 * Composite pattern utilizes Polymorphism.
	 * @author Gaurav Goel
	 */
	// Abstract Class
	public class Composite extends Component
	{
		private var components:Array;
		
		public function Composite(soul:ISoul, mind:IMind = null)
		{
			super(soul, mind);
			this.initialize();
		}
		
		private function initialize():void
		{
			this.components = new Array();
		}
		
		override public function addComponent(component:Component):void
		{
			this.components.push(component);
			component.setParent(this);
		}
		
		override public function remove(component:Component):void
		{
			//todo: implement
		}
		
		override public function getChild(i:int):Component
		{
			var child:Component = null;
			if ((i >= 0) && (i < components.length))
			{
				child = components[i];
			} 
			return child;
		}
		
		override public function update(notification:INotification = null):void
		{
			for each (var component:Component in components)
			{
				component.update(notification);
			}
		}
	}
}