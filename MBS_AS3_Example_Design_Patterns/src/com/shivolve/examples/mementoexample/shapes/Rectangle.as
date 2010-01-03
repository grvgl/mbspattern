package com.shivolve.examples.mementoexample.shapes 
{
	import com.shivolve.mbs.as3.mind.state.SimpleState;
	import com.shivolve.examples.mementoexample.mementos.RectangleMemento;
	import com.shivolve.examples.mementoexample.mementos.ShapeMemento;
	
	import flash.display.Sprite;

	public class Rectangle extends Shape 
	{
		
		private var _width:Number;
		private var _height:Number;
		private var _color:Number;
		private var rectangle:Sprite;
		
		public function Rectangle(width:Number, height:Number, colorValue:Number) 
		{
			_width = width;
			_height = height;
			_color = colorValue;
			this.rectangle = new Sprite();
			this.draw();
		}
		
		private function draw():void 
		{
			this.rectangle.graphics.clear();
			this.rectangle.graphics.lineStyle(1, this.color, 1);
			this.rectangle.graphics.beginFill(this.color, 1)
			this.rectangle.graphics.drawRect(0, 0, this.width, this.height);
			this.rectangle.graphics.endFill();
			this.addChild(this.rectangle);
		}
		
		override public function set width(value:Number):void 
		{
			_width = value;
			this.draw();
		}
		
		override public function get width():Number 
		{
			return _width;
		}
		
		override public function set height(value:Number):void 
		{
			_height = value;
			this.draw();
		}
		
		override public function get height():Number 
		{
			return _height;
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
			return new RectangleMemento("rectangle", new SimpleState("up"), this);
		}
	}
}