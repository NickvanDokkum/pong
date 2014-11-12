package 
{
	import factorys.AbstractPlatform;
	import factorys.Ball;
	import factorys.PlatformFactory;
	import flash.display.Sprite;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author Nick van Dokkum
	 */
	public class Main extends Sprite 
	{
		//var level : Level; 
		public var _Game:YoshaGame;
		public var ball : Ball;
		public function Main():void 
		{
			var ball : Ball = new Ball;
			addChild(ball);
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			_Game = new YoshaGame;
			
			addChild(_Game);
		}
		
		
		
		
		
	}
	
}