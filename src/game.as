package  
{
	import Players;
	/**
	 * ...
	 * @author Nick van Dokkum
	 */
	public class Game 
	{
		public static var game: Game;
		public var _chars:Players;
		//public var _ball:Ball;
		public function Game() 
		{
			_chars = new Players();
			//_ball = new Ball();
		}
		
		public function restart1()
		{
			_chars.restart();
		}
		public function restart2()
		{
			_chars.restart();
		}
		public function destroy()
		{
			_chars.destroy();
		}
	}

}