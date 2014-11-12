package  
{
	/**
	 * ...
	 * @author ... The Hitman
	 */
	
	import factorys.Ball;
	import factorys.Platform;
	
	import flash.display.Sprite;
	import flash.events.Event;
	public class Level extends Sprite
	{
		public var ball : Ball;
		public var platform : Platform;
		
		public function Level() 
		{
			
			addEventListener(Event.ADDED_TO_STAGE,init);
			
			var ball : Ball = new Ball;
			addChild(ball);
			
			var platform : Platform = new Platform;
			addChild(platform);
			
			
			
			
			
			
		
			
			
		}
		
		private function init(e:Event):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			addEventListener(Event.ENTER_FRAME, loop);
		}
		
		private function loop(e:Event):void 
		{
			if (ball.hitTestObject(platform) == true)
			{
				y -= 0;
			}
				
		}
		
	}

}