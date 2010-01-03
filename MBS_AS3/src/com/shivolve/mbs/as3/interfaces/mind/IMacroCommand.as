package com.shivolve.mbs.as3.interfaces.mind
{
	public interface IMacroCommand extends ICommand
	{
		function addCommand(command:Class):void;
		function removeCommand(command:Class):void;
	}
}