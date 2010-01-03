package com.shivolve.examples.mementoexample
{
	import com.shivolve.examples.mementoexample.mementos.ShapeMemento;
	import com.shivolve.examples.mementoexample.shapes.Circle;
	import com.shivolve.examples.mementoexample.shapes.Rectangle;
	import com.shivolve.examples.mementoexample.shapes.Shape;
	import com.shivolve.examples.mementoexample.shapes.Triangle;
	
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.text.StyleSheet;
	import flash.text.TextField;
	
	import mx.controls.Alert;
	
	public class MementoExample extends Sprite 
	{
		
		private var shape:Shape;
		private var previousMementos:Array;
		private var nextMementos:Array;
		
		public function MementoExample() 
		{
			if (this.stage) 
			{
				this.initialize();	
			}
			else 
			{
				this.addEventListener(Event.ADDED_TO_STAGE, this.initialize);	
			}
		}
		
		private function initialize(e:Event = null):void 
		{
			this.removeEventListener(Event.ADDED_TO_STAGE, this.initialize);
			this.previousMementos = new Array();
			this.nextMementos = new Array();
			this.createTextField();
			this.createRandomShape();
			this.previousMementos.push(this.shape.getMemento());
		}
		
		private function createTextField():void
		{
			var heading:Object = new Object();
			heading.fontSize = 25;
			heading.fontStyle = "normal";
			heading.fontFamily = "Arial";
			
			var body:Object = new Object();
			body.fontSize = 15;
			body.fontStyle = "normal";
			body.fontFamily = "Arial";
			
			var style:StyleSheet = new StyleSheet();
			style.setStyle(".heading", heading);
			style.setStyle(".body", body);
			
			var txtField:TextField = new TextField();
			txtField.styleSheet = style;
			txtField.width = 300;
			txtField.selectable = false;
			txtField.htmlText = "<span class = 'heading'>Memento Example</span>" +
				" \n \n <span class = 'body'>Click shape to get a new shape.</span>";
			this.addChild(txtField);
			
			var bodyField:TextField = new TextField();
			bodyField.styleSheet = style;
			bodyField.width = 500;
			bodyField.selectable = false;
			bodyField.htmlText = "<span class = 'body'>                      New Shape      	                  Previous Shape</span>";
			this.addChild(bodyField);
			bodyField.y = 200;
		}

		/**
		 * Create a random shape.
		 */
		private function createRandomShape():void
		{
			var shapes:Vector.<String> = Vector.<String>(["Circle", "Rectangle", "Triangle"]);
			var randomShapeName:String = shapes[Math.floor(Math.random() * shapes.length)];
			var side:Number = Math.random() * 40 + 10;
			var color:Number = Math.random() * (255 * 255 * 255);
			switch (randomShapeName)
			{
				case "Circle":
					this.shape = new Circle(side, color);
					break;
				case "Rectangle":
					this.shape = new Rectangle(side, side, color);
					break;
				case "Triangle":
					this.shape = new Triangle(side, color);
					break;
			}
			this.addChild(this.shape);
			this.shape.x = 100 + this.shape.width / 2;
			this.shape.y = 100 + this.shape.height / 2;
			this.shape.addEventListener(MouseEvent.CLICK, onShapeClick);
		}  	

		private function onShapeClick(event:MouseEvent):void 
		{
			var memento:ShapeMemento;
			memento = this.previousMementos[this.previousMementos.length - 1];
			memento.shape.x = 300 + memento.shape.width / 2;
			memento.shape.y = 100 + memento.shape.height / 2;
			memento.shape.removeEventListener(MouseEvent.CLICK, onShapeClick);
			if(this.previousMementos.length > 1)
			{
				this.previousMementos[this.previousMementos.length - 2].shape.visible = false;
			}			
			this.createRandomShape();
			this.previousMementos.push(this.shape.getMemento());
		}
	}
}