package  
{
	import Players;
	/**
	 * ...
	 * @author Nick van Dokkum
	 */
	public class Game 
	{
		public var _chars:Players;
		public var _ball:Ball;
		public function Game() 
		{
			_chars = new Players();
			_ball = new Ball();
		}
		
	}

}