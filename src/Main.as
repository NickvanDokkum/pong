package 
{
	import YBall;
	import flash.display.Sprite;
	import flash.events.Event;
	/**
	 * ...
	 * @author Nick van Dokkum
	 */
	public class Main extends Sprite 
	{
		public static var main: Main;
		//public var _game :Game;
		public var level : Level; 
		public var _gameYosha:YoshaGame;
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			main = this;
		//	_game = new Game;
			_gameYosha = new YoshaGame;
			addChild(_gameYosha);
		}
	}
}