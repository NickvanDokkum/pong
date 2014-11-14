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
		public var _ball:Ball;
		public var _score:Score;
		private var score1:Number = 0;
		private var score2:Number = 0;
		public function Game() 
		{
			_chars = new Players();
			_score = new Score;
			_ball = new Ball();
		}
		public function restart1()
		{
			_chars.restart();
			score1 ++;
			if (score1 = 1) {
				_score.Score11();
			}
			else if (score1 = 2) {
				_score.Score21();
			}
			else {
				_score.Score31();
			}
		}
		public function restart2()
		{
			_chars.restart();
			score2 ++;
			if (score2 = 1) {
				_score.Score12();
			}
			else if (score2 = 2) {
				_score.Score22();
			}
			else {
				_score.Score32();
			}
		}
		public function destroy()
		{
			//_chars.destroy();
		}
	}

}