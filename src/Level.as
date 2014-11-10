package  
{
	/**
	 * ...
	 * @author ...
	 */
	import factorys.AbstractPlatform;
	import factorys.PlatformFactory;
	import flash.display.Sprite;
	import flash.events.Event;
	public class Level extends Sprite
	{
		
		public function Level() 
		{
			// here we build the platforms.... with dirt.... and grass... and stuff
			var platformFactory : PlatformFactory = new PlatformFactory();
			
			// here we ask the factory to produce the dirt
			var platform : AbstractPlatform = platformFactory.makePlatform(PlatformFactory.PLATFORM);
			
			addChild(platform);
			
		}
		
	}

}