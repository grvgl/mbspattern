package 
{
	/**
	 * 
	 * <p>MBSPattern is a framework that provides an intuitive way to use design patterns.
	 * 	<ul><li>
			MBSPattern is a collection of design patterns with their generic definitions. 
		</li><li>
			MBSPattern uses pattern-based naming conventions. It provides a consistent terminology to develop across the technologies.
		</li><li>
			It provides a cosistent way to harness the inherent capabilities of the languages. 
		</li><li>
			At the application level, MBSPattern corresponds to the popular MVC implementation with an approach to match with MBS naming conventions of the Mind, Body, Soul triad (Soul -> Mind -> Body => Source -> Connection -> Result). 
		</li></ul>

		MBS broadly categorizes design patterns into three types.
	 * <p><b>MBS at the core level:</b></p>
	 * <p><b>Mind:</b> Behaviour (Chain of Responsibility, Command, Interpreter, Iterator, Mediator, Memento, Observer, State, Strategy, Template Method, Visitor)</p>
	 * <p><b>Body:</b> Structure (Adapter, Bridge, Composite, Decorator, Facade, Flyweight, Proxy)</p>
	 * <p><b>Soul:</b> Creation (Abstract Factory, Builder, Factory, Prototype, Singleton)</p>
	 * </p>
	 * 
	 * <p>MBS aims to provide a convenient way to getting started with development using design patterns. It provides a collection of design patterns to use in projects that should be easy to understand and use.</p>
	 * <b>MBS – basic structure at the core level: </b>
	 * <p>MBS categories the design patterns into three parts. There is also a fourth part that puts mind, body and soul into action. Name of the package is <code>action</code>.</p>
	 * 
	 * 
	 * <b>MBSPattern code resides in <code>com.shivolve.mbs</code> package</b>. Core design patterns exist in three packages <code>mind</code>, <code>body</code> and <code>soul</code>. There is a fourth <code>action</code> package to utilize the in-built features of the language. 
<ul>
<li><code>com.shivolve.mbs.as3.mind</code> contains behavioral patterns. Use these patterns to think and guide behaviour.</li>
<li><code>com.shivolve.mbs.as3.body</code> contains structural patterns. Use these patterns to make thigns with form and structure.</li>
<li><code>com.shivolve.mbs.as3.soul</code> contains creational patterns. Use these patterns to inspire creativity.</li>
<li><code>com.shivolve.mbs.as3.action</code> contains classes that utilize the inheret capabilities of the language. Extend or use the in-build language specific classes in this package.</li>
</ul>
	 * 
	 * 
	 * 
	 * 
	 * <table border="1">
	 * 	<tr>
	 * 		<th>
	 * 			MBS
	 * 		</th>
	 * 		<th>
	 * 			ActionScript
	 * 		</th>
	 * 	</tr>
	 * 	<tr>
	 * 		<td>
	 * 			MBSNotification	
	 * 		</td>
	 * 		<td>
	 * 			Event
	 * 		</td>
	 * 	</tr>
	 * 	<tr>
	 * 		<td>
	 * 			MBSNotifier		
	 * 		</td>
	 * 		<td>
	 * 			EventDispatcher
	 * 		</td>
	 * 	</tr>
	 * </table>
	 * 
	 * <p>
	 * MBS categorizes design patterns in three parts - form (body), source (soul) and behaviour (mind). Each Soul can have multiple bodies. Its the base of the application.
	 * </p>
	 * Each body has at least one mind.
	 * <p><b>MBS – basic structure at the applicatin level:</b> MBS corresponds to MVC at the application level.</p>
	 * <ul><li>
	 * Mind: 
	 * <ul><li>
	 * 	Control (Strategy, Command)
	 * </li><li>
	 * Handles application logic, user interaction and updates Model
	 * </li><li>
	 *  Has reference of the Soul 
	 * </li></ul></li><li>
	 * Body:
	 * <ul><li>
	 * View (Observer, Context)
	 * </li><li>
	 * Handles display / communication
	 * </li><li>
	 * User interface with current application state
	 * </li><li>
	 * Has a reference of Mind (Control) and Soul (Model)
	 * </li></ul></li><li>
	 * Soul: 
	 * <ul><li>
	 * 	Model (Subject)
	 * </li><li>
	 * 	Handles data storage and maintains application states
	 * </li><li>
	 * Does not have any reference of Mind (Control) or Body (View)
	 * </li></ul></li></ul>
	 * <p><b>MBS vs MVC:</b></p>
	 * <ul>
	 * 	<li>MBS, much like MVC, categorises things in three parts - mind (controller), body (view), soul (model).</li>
	 * 	<li>MBS, unlike MVC, recognizes these three divisions of mind, body and soul in all the areas.</li>
	 * </ul>
	 * <p>
	 * 	<p><b>One of the many ways design patterns can be used at the application level:</b></p>
	 * 	<p>Observer Pattern: SOUL is SUBJECT and BODY is OBSERVER.</p>
	 * 	<p>Strategy Pattern: BODY is CONTEXT and MIND is STRATEGY.</p>
	 * 	<p>Composite Pattern: BODY contains Components and COMPOSITE nodes.</p>
	 * </p>
	 * 
	 * <p><b>Responsibilities:</b></p>
	 * <p>Mind handles user input and changes the state of the application in the Soul</p>
	 * <p>Body contains user interface and displayes the state of the application</p>
	 * <p>Soul contains application data and logic to manage the state of the application</p>
	 * 
	 * 
	 * <p><b>Benefits:</b></p>
	 * <ul>
	 * <li>Provides a way to use the inherent language capabilities right at the root of the framework (<code>com.shivolve.as3.mbs.action</code>).
	 * </li><li>
	 * Provides a clear separation between technology specific details from pure design pattern related, independent of technology, details.
	 * 	<ul>
	 * 		<li><code>com.shivolve.as3.mbs.action</code> package contains the code to utilize the inherent capabilities of the Action Script 3 language.</li>
	 * 		<li><code>com.shivolve.as3.mbs.mind</code>, <code>com.shivolve.as3.mbs.body</code> and <code>com.shivolve.as3.mbs.soul</code> packages contain the design pattern definitions.</li>
	 * 	</ul>
	 * </li><li>
	 * Uses generic terminology (like Mind, Body and Soul) that everybody can understand and it becomes easy to get started.
	 * </li>
	 * </ul>
	 * 
	 * 
	 * <p>
	 * Implementation Details:
	 * <ol><li>
	 * User interacts with an application body part. For example clicks a button in the body.
	 * </li><li>
	 * The Body sends the click event to the Mind to handle it.
	 * </li><li>
	 * The Mind updates the Soul based on its own decision to handle the button click.
	 * </li><li>
	 * The Soul updates itself and tells the Body that the state of the soul has now changed.
	 * </li><li>
	 * The Body observes the state information from the Soul and updates itself.
	 * </li></ol>
	 * </p>
	 * OOPs: <br/>
	 * Use Inheritance to cut down on redundancy of methods doing same thigs.<br/>
	 * Use Abstraction by implementing the solution independent of the details. Add the details just when they are required.<br/>
	 * Use Encapsulation to build the application as combination of modules and components. <br/>
	 * Use Encapsulation by using getters and setters. Use private variables for the details you want to hide.<br/>
	 * Use Polymorphism to implement abstract methods in multiple sub-classes. Polymorphism allows you to avoid using switch or if statements.<br/>
	 * <p>
	 * <h3>Interface vs. Abstract classes</h3>
	 * Use abstract classes for the ability to add more behaviors easily. Use interfaces to avoid base class if there not
	 * anything other classes should inherit. 
	 * </p>
	 * <p><b>Philosophy:</b></p>
	 * 
	 * <p>Object oriented programming models the real world. MBS programming uses mind, body, soul concepts to model the real world.</p>

<p>MBSPattern, at the core, is a collection of design patterns categorized as mind, body or soul. This is an attempt to feel at home by using Mind, Body, Soul perspective. Mind, Body and Soul form the universal triad. This being so evolutionary does not force to live to constraints to new definitions every time.</p>
<ul>
<li>
Thinking of Control, View, Model as Mind, Body and Soul feels great.
</li><li>
Application souls, minds and bodies extend the MBS Soul, Mind and Body.
<br/>
(All the souls extend the One Higher Soul. All the Bodies are an extension of His Body. Only That Mind works in all the minds.)
</li><li>
Classes within the <code>mbs.action</code> package extend the language specific built-in classes to utilize the inherent capabilities of the language (Action Script 3 in case of MBS_AS3).
</li></ul>

MBS vs MVC:
<ul>
<li>Mind vs Control -> Mind understands. To understand is the best way to control. Mind refers to soul. Directs the body.</li>
<li>Body vs View -> Body has a form. It can be seen and heard. Body is there to see, touch, hear and feel.</li>
<li>Soul vs Model -> Soul is the best model to refer to. Soul is independent, inherent, omnipresent. Mind and Body can not ignore Soul.</li>
</ul>
<p>You should find it useful in the long run and also if you have to change from one technology to other. Mind, Body, Soul relate more to life and our thinking patterns from any walk of life.</p>
	 */
	public class MBS
	{
		/**
		 * This is an open source project in a very early stage. This has been started with the intent to learn, share and grow with other developers.
		 */
		private static const version:String = "0.0.0.1";
	}
}