package com.shivolve.examples.mementoexample.shapes 
{
	import com.shivolve.mbs.as3.mind.state.SimpleState;
	import com.shivolve.examples.mementoexample.mementos.CircleMemento;
	import com.shivolve.examples.mementoexample.mementos.ShapeMemento;
	
	import flash.display.Sprite;

	public class Circle extends Shape 
	{
		
		private var _radius:Number;
		private var _color:Number;
		private var circle:Sprite;
		
		public function Circle(radiusValue:Number, colorValue:Number) 
		{
			_radius = radiusValue;
			_color = colorValue;
			trace("this.color="+this.color);
			this.circle = new Sprite();
			this.draw();
		}
		
		private function draw():void 
		{
			this.circle.graphics.clear();
			this.circle.graphics.lineStyle(1, this.color, 1);
			this.circle.graphics.beginFill(this.color, 1)
			this.circle.graphics.drawCircle(0, 0, this.radius);
			this.circle.graphics.endFill();
			this.addChild(this.circle);
		}
		
		public function set radius(value:Number):void 
		{
			_radius = value;
			this.draw();
		}
		
		public function get radius():Number 
		{
			return _radius;
		}
		
		public function set color(value:Number):void {
			_color = value;
			this.draw();
		}
		
		public function get color():Number 
		{
			return _color;
		}
		
		override public function getMemento():ShapeMemento 
		{
			return new CircleMemento("circle", new SimpleState("up"), this);
		}
		/*
		public function setMemento(memento:CircleMemento):void
		{
			this.radius = memento.radius;
			this.color = memento.color;
			this.draw();
		}
		*/
	}
}
