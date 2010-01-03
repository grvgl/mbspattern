package com.shivolve.mbs.as3.mind.templatemethod 
{
	
	/**
	 * <ul>
	 * 	<li>Template Method defines steps of an algorithm.</li>
	 * 	<li>Defers the exact steps of the algorithm to a subclass.</li>
	 * 	<li>Template Method pattern creates a template for an algorithm.</li>
	 *	<li>Template Method is an important technique for code reuse.</li>
	 * 	<li>Template Method has an abstract class with abstract methods, concrete methods and hooks.</li>
	 * 	<li>Template Method encapsulates algorithm using inheritance (whereas Strategy Pattern encapsulates algorithm using composition).</li>
	 * </ul>
	 */
	public class AbstractTemplate
	{
		
		public function AbstractTemplate() 
		{
			
		}
		
		public function templateMethod():void
		{
			abstractMethod();
			concreteMethod();
			hook();
		}
		/**
		 * Each concrete subclass must implement all the abstract methods in the abstract TemplateMethod class.
		 */
		public function abstractMethod():void
		{
			
		}
		
		public function concreteMethod():void 
		{
			
		}
		
		/**
		 * Concrete subclasses have the option to implement the hook or leave it as it is.
		 */
		public function hook():void
		{
			
		}
	}
	
}