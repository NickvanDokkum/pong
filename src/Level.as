package  
{
	/**
	 * ...
	 * @author ... The Hitman
	 */
	
	import YBall;
	import Platform;
	import flash.display.Sprite;
	import flash.events.Event;
	public class Level extends Sprite
	{
		public var ball : YBall;
		public var platform : Platform;
		
		public function Level() 
		{
			addEventListener(Event.ADDED_TO_STAGE,init);
			
			ball  = new YBall;
			addChild(ball);
			
			
			platform = new Platform;
			addChild(platform);
			
		}
		
		private function init(e:Event):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			addEventListener(Event.ENTER_FRAME, loop);
		}
		
		private function loop(e:Event):void 
		{
			
			if (ball.hitTestObject(platform))
			{
				ball.fly = false;
				ball.y += 0;
				
			}	
		}
	}
}