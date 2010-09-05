package com.shivolve.application.body
{
	import com.shivolve.application.body.components.Browser;
	import com.shivolve.application.body.components.SButtonBar;
	import com.shivolve.mbs.as3.interfaces.mind.INotification;
	import com.shivolve.mbs.as3.mind.mediator.Mediator;
	
	import flash.display.NativeWindowSystemChrome;
	import flash.events.KeyboardEvent;
	import flash.events.MouseEvent;
	
	import mx.containers.Canvas;
	import mx.containers.VBox;
	import mx.controls.Alert;
	import mx.core.UIComponent;
	
	
	public class SButtonBarMediator extends Mediator
	{
		protected static const NAME:String = "SButtonBarMediator";
		public function SButtonBarMediator(body:Object=null)
		{
			super(body);
			this.body.addEventListener(MouseEvent.CLICK, this.onButtonClicked);
			this.body.addEventListener(KeyboardEvent.KEY_UP, this.onKeyUp);
		}
		
		private function onButtonClicked(e:MouseEvent):void
		{
			var buttonId:String = e.target.id;
			//var exampleCanvas:Canvas = this.getBody().parent.getChildByName("exampleCanvas");
			//if(exampleCanvas.numChildren > 0 && buttonId != null)
			//{
			//	exampleCanvas.removeChildAt(exampleCanvas.numChildren - 1);
			//}
			switch (buttonId)
			{
				case "bb":
					//var mementoExample:MementoExample = new MementoExample();
					var newWindow:Window = new Browser();
					newWindow.systemChrome = NativeWindowSystemChrome.NONE;
					newWindow.width = "100%";
					newWindow.height = "100%";
					newWindow.open(true);
					//exampleCanvas.addChild(uiComponent);
					//uiComponent.addChild(mementoExample);	
					//Alert.show("SButtonBarMediator#buttonId:"+buttonId);
					break;
				case "mm":
					//var stopWatch:ApplicationExample = new ApplicationExample();
					//exampleCanvas.addChild(stopWatch);
					Alert.show("SButtonBarMediator#buttonId:"+buttonId);
					break;
				case "xx":
					this.closeApplication();
					break;
				default:
					if(buttonId != null)
					{
						//var underConstruction:UnderConstructionExample = new UnderConstructionExample();
						//exampleCanvas.addChild(underConstruction);
						//underConstruction.currentExample = e.target.label;
						trace("SButtonBarMediator#default:");
					}
					break;
			}
		}
		
		private function onKeyUp(event:KeyboardEvent):void
		{
			var keyCode:uint = event.keyCode;
			Alert.show("String(keyCode)");
			switch(keyCode)
			{
				case 88:
					this.closeApplication();
					break;
				default:
					Alert.show(String(keyCode));
					break;
			}
		}

		private function closeApplication():void
		{
			this.body.stage.nativeWindow.close();
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
		
		protected function get sButtonBar():SButtonBar
		{
			return this.getBody() as SButtonBar;
		}
	}
}