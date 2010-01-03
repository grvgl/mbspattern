package com.shivolve.mbs.as3.body.decorator
{
	import com.shivolve.mbs.as3.interfaces.body.IDecorator;
	
	/**
	 * <p>Decorator is an abstract class. It adds responsibilities to objects dynamically. It provides flexible alternative to subclassing for additional functionality.</p>
	 * 
	 * <ul>
	 * <li>Create a new ConcreteComponent and ConcreteDecorator to and new feature.</li>
	 * </ul>
	 */
	
	public class Decorator extends Component implements IDecorator
	{
		protected var component:Component;
		private var _decorator:IDecorator;
		

		public function Decorator()
		{
			//_decorator = decorator; 
		}
		
		/**
		 * This method is an example to add responsibility.
		 */
		public function operation():void
		{
			//TODO: Implement.
		}
	}
}