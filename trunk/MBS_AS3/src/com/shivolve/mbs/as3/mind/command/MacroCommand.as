package com.shivolve.mbs.as3.mind.command
{
	/**
	 * Encapsulate command request objects.
	 * MacroCommand uses Array to store the commands as that helps chaining the commands.
	 */
	import com.shivolve.mbs.as3.interfaces.mind.ICommand;
	import com.shivolve.mbs.as3.interfaces.mind.IMacroCommand;
	import com.shivolve.mbs.as3.interfaces.mind.INotification;
	import com.shivolve.mbs.as3.interfaces.mind.INotifier;
	import com.shivolve.mbs.as3.mind.observer.Notifier;
	public class MacroCommand extends Notifier implements IMacroCommand, INotifier 
	{
		private var commands:Array;
		public function MacroCommand() 
		{
			this.commands = new Array();
			this.initialize();
		}
		/**
		 * Initialize itself.
		 */
		protected function initialize():void 
		{
			
		}
		
		public function addCommand(commandClassRef:Class):void 
		{
			this.commands.push(commandClassRef);
		}

		public function removeCommand(commandClassRef:Class):void 
		{
			// todo: remove command
		}

		public final  function execute(notification:INotification):void 
		{
			for each ( var commandClass:Class in commands)
			{
				var command:ICommand = new commandClass();
				command.execute(notification);
			}
		}
	}
}