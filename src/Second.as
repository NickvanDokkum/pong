package 
{
	
	import factorys.Ball;
	
	import flash.display.Sprite;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author ... The Hitman
	 */
	public class Second extends Sprite 
	{
		//var level : Level; 
		public var _Game:YoshaGame;
		public var ball : Ball;
		public function Second():void 
		{
			//var ball : Ball = new Ball;
			//addChild(ball);
			//ball.hitTestObject(platform);
			
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