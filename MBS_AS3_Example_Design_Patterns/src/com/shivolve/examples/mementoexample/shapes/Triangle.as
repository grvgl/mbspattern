package com.shivolve.examples.mementoexample.shapes 
{
	import com.shivolve.mbs.as3.mind.state.SimpleState;
	import com.shivolve.examples.mementoexample.mementos.ShapeMemento;
	import com.shivolve.examples.mementoexample.mementos.TriangleMemento;
	
	import flash.display.Sprite;

	public class Triangle extends Shape 
	{
		
		private var _side:Number;
		private var _color:Number;
		private var triangle:Sprite;
		
		public function Triangle(side:Number, colorValue:Number) 
		{
			_side = side;
			_color = colorValue;
			trace("this.color="+this.color);
			this.triangle = new Sprite();
			this.draw();
		}
		
		private function draw():void 
		{
			this.triangle.graphics.clear();
			this.triangle.graphics.lineStyle(1, this.color, 1);
			this.triangle.graphics.beginFill(this.color, 1);
			this.triangle.graphics.moveTo(0 + this.side/2, 0);
			this.triangle.graphics.lineTo(0 + this.side, this.side);
			this.triangle.graphics.lineTo(0, this.side);
			this.triangle.graphics.lineTo(0 + this.side/2, 0);
			this.triangle.graphics.endFill();
			this.addChild(this.triangle);
		}
		
		public function set side(value:Number):void 
		{
			_side = value;
			this.draw();
		}
		
		public function get side():Number 
		{
			return _side;
		}
		
		public function set color(value:Number):void 
		{
			_color = value;
			this.draw();
		}
		
		public function get color():Number 
		{
			return _color;
		}
		
		override public function getMemento():ShapeMemento 
		{
			return new TriangleMemento("triangle", new SimpleState("up"), this);
		}
	}
}