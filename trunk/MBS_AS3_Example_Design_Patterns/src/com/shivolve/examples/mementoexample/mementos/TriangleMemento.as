package com.shivolve.examples.mementoexample.mementos
{
	import com.shivolve.mbs.as3.interfaces.mind.IState;
	import com.shivolve.examples.mementoexample.shapes.Triangle;
	
	/**
	 * TriangleMemento maintains the state of the Triangle shape.
	 */
	public class TriangleMemento extends ShapeMemento
	{
		public var triangle:Triangle;
		public function TriangleMemento(id:String, state:IState, triangle:Triangle)
		{
			super(id, state, triangle);
		}
	}
}