package com.shivolve.mbs.as3.action.mindbodysoul
{
	import com.shivolve.mbs.as3.interfaces.mind.IMind;
	import com.shivolve.mbs.as3.action.interfaces.mind.IMBSMind;
	import com.shivolve.mbs.as3.interfaces.soul.ISoul;
	import com.shivolve.mbs.as3.mindbodysoul.Mind;
	import com.shivolve.mbs.as3.action.mind.observer.MBSNotifier;
	import com.shivolve.mbs.as3.interfaces.mind.ICommand;
	import com.shivolve.mbs.as3.interfaces.mind.INotification;
	import mx.controls.Alert;
	
	/**
	 * <p>MBSMind uses MBSNotifier to register observers.</p>
	 * 
	 * <p>While there can be many other ways, application can create its application specific Mind, Body, Soul classes 
	 * by extending the MBSMind, MBSBody, MBSSoul classes in the <code>mindbodysoul</code> package.</p>
	 */

	public class MBSMind extends Mind implements IMBSMind
	{
		public function MBSMind()
		{
			super();
		}
		
		override public function addCommand(notificationName:String, commandClassRef:Class) : void
		{
			if(notificationName != null)
			{
				this.commands[notificationName] = commandClassRef;
			}
			trace("MBSMind.addCommand():notificationName=" + notificationName + " commandClassRef=" + commandClassRef);
			MBSNotifier.getInstance().addObserver(notificationName, executeCommand, this);
		}
		
		override public function executeCommand(notification:INotification):void
		{
			trace("MBSMind#executeCommand(): notification.getName() = " + notification.getName() + " commands[notification.getName()] = " + commands[notification.getName()]);
			try
			{
				var command:ICommand = new commands[notification.getName()]();
				command.execute(notification);
			}
			catch (e:Error)
			{
				//TODO
				trace("TODO:", "MBSMind#executeCommand()", e.message);
			}
		}
	}
}