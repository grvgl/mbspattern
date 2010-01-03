package com.shivolve.examples.mementoexample.shapes
{
	import com.shivolve.mbs.as3.mind.state.SimpleState;
	import com.shivolve.examples.mementoexample.mementos.ShapeMemento;
	
	import flash.display.Sprite;
	
	/**
	 * Shape class is a sprite that all the shapes (Circle, Rectangle, Triangle) extend.
	 */
	public class Shape extends Sprite
	{
		public function Shape()
		{
			super();
		}
		
		/**
		 * 
		 * @return This method returns the memento of the shape. The memento contains the ID and state of the shape for easy retrieval.
		 * 
		 * <p>This example does not show the states of the same shape. It shows different shapes instead. So, it stores an object of the shape (dimenstions and color).</p>
		 */
		public function getMemento():ShapeMemento 
		{
			return new ShapeMemento("triangle", new SimpleState("up"), this);
		}
	}
}