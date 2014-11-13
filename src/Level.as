package  
{
	/**
	 * ...
	 * @author ... The Hitman
	 */
	
	import Ball;
	import Platform;
	import flash.display.Sprite;
	import flash.events.Event;
	public class Level extends Sprite
	{
		public var ball : Ball;
		public var platform : Platform;
		public var background :BackGroundTemp;
		public var tree : Tree;
		public var player : Players;
		
		
		private var platforms:Array;
		
		public function Level() 
		{
			addEventListener(Event.ADDED_TO_STAGE,init);
			
			background = new BackGroundTemp;
			addChild(background);
			
			tree = new Tree;
			addChild(tree);
			
			ball  = new Ball;
			addChild(ball);
			
			//adding the platforms
			platforms = new Array();
			platforms.push(new Platform(1));
			platforms.push(new Platform(2));
			platforms.push(new Platform(3));
			platforms.push(new Platform(4));
			platforms.push(new Platform(5));
			platforms.push(new Platform(6));
		

			
			//putting the platforms in the game
			var l:int = platforms.length;
			for (var i:int = 0; i < l; i++) 
			{
				addChild(platforms[i]);
			}
			//first platform position
			platforms[0].x = 1050;
			platforms[0].y = 330;
			platforms[0].scaleX = -1;
			//second platform position
			platforms[1].x = -50;
			platforms[1].y = 130;
			
			//third platform position
			platforms[2].x = 16;
			platforms[2].y = 35;
			platforms[2].scaleX = 0.22;
			platforms[2].scaleY = 0.22;
			// fourth platform position
			platforms[3].x = 888;
			platforms[3].y = 245;
			platforms[3].scaleX = 0.23;
			platforms[3].scaleY = 0.21;
			// fifth platform position
			platforms[4].x = 138;
			platforms[4].y = 418;
			platforms[4].scaleX = 0.2;
			platforms[4].scaleY = 0.35;
			// sixth platform position
			platforms[5].x = 1065;
			platforms[5].y = 555;
			platforms[5].scaleX = 0.3;
			platforms[5].scaleY = 0.3;
			
			player = new Players;
			addChild(player);
			
		}
		
		private function init(e:Event):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			addEventListener(Event.ENTER_FRAME, loop);
		}
		
		private function loop(e:Event):void 
		{
			
			if (platforms[0].hitTestPoint(ball.x,ball.y + 16,true))
			{
				
				ball.collBot();
			}
			else if (platforms[0].hitTestPoint(ball.x, ball.y -16, true))
			{
				
				
			}
			else if (platforms[0].hitTestPoint(ball.x - 16, ball.y, true))
			{
				
				
			}
			else if (platforms[0].hitTestPoint(ball.x + 16, ball.y, true))
			{
				
				
			}
			
			
		}
	}
}