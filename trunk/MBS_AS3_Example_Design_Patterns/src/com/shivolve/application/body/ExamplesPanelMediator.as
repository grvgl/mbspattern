package com.shivolve.application.body
{
	import com.shivolve.application.body.components.ExamplesPanel;
	import com.shivolve.examples.underconstructionexample.UnderConstructionExample;
	import com.shivolve.examples.applicationexample.ApplicationExample;
	import com.shivolve.examples.commandexample.CommandExample;
	import com.shivolve.mbs.as3.interfaces.mind.INotification;
	import com.shivolve.mbs.as3.mind.mediator.Mediator;
	import com.shivolve.examples.mementoexample.MementoExample;
	import com.shivolve.examples.strategyexample.StrategyExample;
	import com.shivolve.examples.mvcflexphploginexample.MBSAS3ExampleFlexPHPLogin;
	import mx.containers.Canvas;
	import mx.core.UIComponent;
	
	import flash.events.MouseEvent;
	
	import mx.containers.VBox;
	import mx.controls.Alert;
	
	
	public class ExamplesPanelMediator extends Mediator
	{
		protected static const NAME:String = "ExamplesPanelMediator";
		public function ExamplesPanelMediator(body:Object=null)
		{
			super(body);
			this.examplesPanel.addEventListener(MouseEvent.CLICK, this.onPatternClicked);
		}
		
		private function onPatternClicked(e:MouseEvent):void
		{
			var buttonId:String = e.target.id;
			var exampleCanvas:Canvas = this.getBody().parent.getChildByName("exampleCanvas");
			if(exampleCanvas.numChildren > 0 && buttonId != null)
			{
				exampleCanvas.removeChildAt(exampleCanvas.numChildren - 1);
			}
			switch (buttonId)
			{
				case "commandBtn":
					var commandExample:CommandExample = new CommandExample();
					exampleCanvas.addChild(commandExample);					
					break;
				case "mementoBtn":
					var mementoExample:MementoExample = new MementoExample();
					var uiComponent:UIComponent = new UIComponent();
					exampleCanvas.addChild(uiComponent);
					uiComponent.addChild(mementoExample);	
					break;
				case "strategyExample":
					var strategyExample:StrategyExample = new StrategyExample();
					//var uiComponent:UIComponent = new UIComponent();
					exampleCanvas.addChild(strategyExample);
					//uiComponent.addChild(strategyExample);	
					break;
				case "applicationBtn":
					var stopWatch:ApplicationExample = new ApplicationExample();
					exampleCanvas.addChild(stopWatch);
					break;
				case "flexPHPLoginExample":
					var flexPHPLoginExample:MBSAS3ExampleFlexPHPLogin = new MBSAS3ExampleFlexPHPLogin();
					exampleCanvas.addChild(flexPHPLoginExample);
					trace("ExamplesPanelMediator#onPatternClicked(): MVCFlexPHPLoginExample");
					break;
				default:
					if(buttonId != null)
					{
						var underConstruction:UnderConstructionExample = new UnderConstructionExample();
						exampleCanvas.addChild(underConstruction);
						underConstruction.currentExample = e.target.label;
						trace("ExamplesPanelMediator#default:");
					}
					break;
			}
		}
		
		override public function handleNotification(notification:INotification):void
		{
			/*
			switch(notification.getName())
			{
			case 
			}
			*/
		}
		
		protected function get examplesPanel():ExamplesPanel
		{
			return this.getBody() as ExamplesPanel;
		}
	}
}