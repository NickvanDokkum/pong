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
	public class YoshaGame extends Sprite
	{

			// here we ask the level to be added....
		public var _Level:Level;
		public function YoshaGame():void 
		{
			_Level = new Level;
			
			addChild( _Level );
		}
	
	}

}