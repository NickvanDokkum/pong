package 
{
<<<<<<< HEAD
	import YBall;
=======
>>>>>>> origin/master
	import flash.display.Sprite;
	import flash.events.Event;
	/**
	 * ...
	 * @author Nick van Dokkum
	 */
	public class Main extends Sprite 
	{
<<<<<<< HEAD
=======
		public static var main: Main;
		public var _game:Game;
		//var level : Level; 
		//public var _Game:YoshaGame;
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			main = this;
			_game = new Game;
			//_Game = new YoshaGame;
		}
		
		
		
		
		
>>>>>>> origin/master
	}
}