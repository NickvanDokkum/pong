package  
{
	import flash.display.Bitmap;
	import flash.display.MovieClip;
	import flash.events.Event;

	/**
	 * ...
	 * @author Nick van Dokkum
	 */
	public class Ball 
	{
		[Embed(source="../art/chara_design.jpg")]
		private var BallArt:Class;
		
		private var ball:Bitmap;
		
		public var lastHit:Number = 0;
		
		private var bouncetimes:Number = 0;
		private var gravity:Number = 0;
		private var gravIncrease:Boolean = true;
		
		private var ballSpeed:Number = 5; //- is left, + is right
		private var ballRight:Boolean = true;
		public function Ball() 
		{
			ball = new BallArt();
			ball.x = 600;
			ball.y = 300;
			Main.main.stage.addChild(ball);
			
			Main.main.stage.addEventListener(Event.ENTER_FRAME, updateFunctionBall);
		}
		private function updateFunctionBall(e:Event):void
		{
			ball.x += ballSpeed;
			if (ballRight == true && ballSpeed < 15)
			{
				ballSpeed += 0.01;
			}
			else if (ballRight == false && ballSpeed < 15)
			{
				ballSpeed -= 0.01;
			}
			ball.y += gravity;
			if (gravIncrease == true)
			{
				gravity += 0.2;
			}
			if (ball.y < 0 -ball.width)
			{
				if (lastHit == 1) {
					Game.game.restart1();
				}
				else
				{
					Game.game.restart2();
				}
			}
		}
		public function collTop()
		{
			gravity = -gravity;
		}
		public function collBot()
		{
			if (gravity < 5)
			{
				gravity = 0;
				bouncetimes = 0;
				gravIncrease = false;
			}
			else
			{
				gravity = -gravity + bouncetimes;
				bouncetimes += 0.5;
				gravIncrease = true;
			}
		}
		public function collRight()
		{
			ballSpeed = -ballSpeed;
			ballRight = false;
		}
		public function collLeft()
		{
			ballSpeed = -ballSpeed;
			ballRight = true;
		}
		public function hitRight() {
			if (ballSpeed > 0) {
				ballSpeed = -ballSpeed;
			}
			bouncetimes = 0;
			gravity = -10;
			gravIncrease = true;
		}
		public function hitLeft() {
			if (ballSpeed < 0) {
				ballSpeed = -ballSpeed;
			}
			gravity = -10;
			gravIncrease = true;
		}
		public function restart()
		{
			ball.x = 600;
			ball.y = 300;
			gravIncrease = true;
			gravity = 0;
			bouncetimes = 0;
		}
		public function destroy()
		{
			Main.main.stage.removeChild(ball);
		}
	}
}