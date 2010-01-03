package com.shivolve.examples.mementoexample.mementos 
{
	import com.shivolve.mbs.as3.interfaces.mind.IState;
	import com.shivolve.mbs.as3.mind.memento.Memento;
	import com.shivolve.examples.mementoexample.shapes.Shape;

	public class ShapeMemento extends Memento
	{
		public var shape:Shape;
		public function ShapeMemento(id:String, state:IState, shape:Shape)
		{
			super(id, state);
			this.shape = shape;
		}
	}
}