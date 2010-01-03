package com.shivolve.examples.mementoexample.mementos
{
	import com.shivolve.mbs.as3.interfaces.mind.IState;
	import com.shivolve.examples.mementoexample.shapes.Rectangle;
	
	/**
	 * RectangleMemento maintains the state of the Rectangle shape.
	 */
	
	public class RectangleMemento extends ShapeMemento
	{
		public var rectangle:Rectangle;
		public function RectangleMemento(id:String, state:IState, rectangle:Rectangle)
		{
			super(id, state, rectangle);
		}
	}
}