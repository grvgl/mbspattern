package com.shivolve.examples.mementoexample.mementos
{
	import com.shivolve.mbs.as3.interfaces.mind.IState;
	import com.shivolve.examples.mementoexample.shapes.Circle;
	
	/**
	 * CircleMemento maintains the state of the Circle shape.
	 */
	public class CircleMemento extends ShapeMemento
	{
		public var circle:Circle;
		public function CircleMemento(id:String, state:IState, circle:Circle)
		{
			super(id, state, circle);
		}
	}
}