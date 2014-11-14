package  
{
	
	import Ball;
	import Players;
	import Platform;
	import flash.display.Sprite;
	import flash.events.Event;
	/**
	 * ...
	 * @author ... The Hitman
	 */
	
	
	public class Level extends Sprite
	{
		
		
		public var platform : Platform;
		public var background :BackGroundTemp;
		public var tree : Tree;
		
		
		
		private var platforms:Array;
		
		public function Level() 
		{
			addEventListener(Event.ADDED_TO_STAGE,init);
			
			background = new BackGroundTemp;
			addChild(background);
			tree = new Tree;
			Main.main.stage.addChild(tree);
			
			
			//adding the platforms
			platforms = new Array();
			platforms.push (new Platform(1));
			platforms.push(new Platform(2));
			platforms.push(new Platform(3));
			platforms.push(new Platform(4));
			platforms.push(new Platform(5));
			platforms.push(new Platform(6));
			platforms.push(new Platform(7));
			platforms.push(new Platform(8));
			platforms.push(new Platform(9));
			platforms.push(new Platform(10));
			platforms.push(new Platform(11));
		

			
			//putting the platforms in the game
			var l:int = platforms.length;
			for (var i:int = 0; i < l; i++) 
			{
				Main.main.stage.addChild(platforms[i]);
			}
			//first platform position
			platforms[0].x = 1182;
			platforms[0].y = 330;
			platforms[0].scaleX = -1;
			//second platform position
			platforms[1].x = 230;
			platforms[1].y = 170;
			
			//third platform position
			//platforms[2].x = 16;
			//platforms[2].y = ;
			platforms[2].scaleX = 0;
			platforms[2].scaleY = 0;
			// fourth platform position
			//platforms[3].x = 588;
			//platforms[3].y = 240;
			platforms[3].scaleX = 0;
			platforms[3].scaleY = 0;
			// fifth platform position
			platforms[4].x = 30;
			platforms[4].y = 400;
			platforms[4].scaleX = 0.4;
			platforms[4].scaleY = 0.4;
			// sixth platform position
			platforms[5].x = 650;
			platforms[5].y = 500;
			platforms[5].scaleX = 0.4;
			platforms[5].scaleY = 0.4;
			// seventh platform position
			platforms[6].x = 40;
			platforms[6].y = 565;
			platforms[6].scaleX = 1;
			platforms[6].scaleY = 1;
			// eight platform position
			platforms[7].x = 1040;
			platforms[7].y = 640;
			platforms[7].scaleX = 1;
			platforms[7].scaleY = 1;
			// nineth platform position
			platforms[8].x = 565;
			platforms[8].y = 640;
			platforms[8].scaleX = 1;
			platforms[8].scaleY = 1;
			// tenth platform position
			platforms[9].x = -50;
			platforms[9].y = 550;
			platforms[9].scaleX = 1;
			platforms[9].scaleY = 1;
			// eleventh platform position
			platforms[10].x = 800;
			platforms[10].y = 640;
			platforms[10].scaleX = 1;
			platforms[10].scaleY = 1;
			

		}
		
		private function init(e:Event):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			addEventListener(Event.ENTER_FRAME, loop);
		}
		
		private function loop(e:Event):void 
		{
			
			if (platforms[0].hitTestPoint(Main.main._game._ball.x,Main.main._game._ball.y ,true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._ball.collBot();
			}
			else if (platforms[0].hitTestPoint(Main.main._game._ball.x, Main.main._game._ball.y , true))
			{
				Main.main._game._ball.collTop();
				trace("t778597597549455454hfdvhbjdfhjdf");
			}
			else if (platforms[0].hitTestPoint(Main.main._game._ball.x , Main.main._game._ball.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._ball.collLeft;
			}
			else if (platforms[0].hitTestPoint(Main.main._game._ball.x , Main.main._game._ball.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._ball.collRight;
			}
			
			else if (platforms[0].hitTestPoint(Main.main._game._chars.x,Main.main._game._chars.y ,true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				
		
				Main.main._game._chars.collBot1();
			}
			else if (platforms[0].hitTestPoint(Main.main._game._chars.x, Main.main._game._chars.y , true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
			
				Main.main._game._chars.collLeft2();
			}
			else if (platforms[0].hitTestPoint(Main.main._game._chars.x , Main.main._game._chars.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				
				Main.main._game._chars.collRight2();
			}
			else if (platforms[0].hitTestPoint(Main.main._game._chars.x , Main.main._game._chars.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
		
				Main.main._game._chars.collTop2();
			}
			
			else if (platforms[0].hitTestPoint(Main.main._game._chars.x,Main.main._game._chars.y ,true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				
				
				Main.main._game._chars.collBot1();
			}
			else if (platforms[0].hitTestPoint(Main.main._game._chars.x, Main.main._game._chars.y , true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._chars.collLeft1();
				
			}
			else if (platforms[0].hitTestPoint(Main.main._game._chars.x , Main.main._game._chars.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._chars.collRight1();
				
			}
			else if (platforms[0].hitTestPoint(Main.main._game._chars.x , Main.main._game._chars.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._chars.collTop1();
				
			}
			
			else if (platforms[1].hitTestPoint(Main.main._game._ball.x,Main.main._game._ball.y ,true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._ball.collBot();
			}
			else if (platforms[1].hitTestPoint(Main.main._game._ball.x, Main.main._game._ball.y , true))
			{
				Main.main._game._ball.collTop();
				trace("t778597597549455454hfdvhbjdfhjdf");
			}
			else if (platforms[1].hitTestPoint(Main.main._game._ball.x , Main.main._game._ball.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._ball.collLeft();
			}
			else if (platforms[1].hitTestPoint(Main.main._game._ball.x , Main.main._game._ball.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._ball.collRight();
			}
			
			else if (platforms[1].hitTestPoint(Main.main._game._chars.x,Main.main._game._chars.y ,true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._chars.collBot2();
				
			}
			else if (platforms[1].hitTestPoint(Main.main._game._chars.x, Main.main._game._chars.y , true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				
				Main.main._game._chars.collTop2();
			}
			else if (platforms[1].hitTestPoint(Main.main._game._chars.x , Main.main._game._chars.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				
				Main.main._game._chars.collLeft2();
			}
			else if (platforms[1].hitTestPoint(Main.main._game._chars.x , Main.main._game._chars.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				
				Main.main._game._chars.collRight2();
			}
			
			else if (platforms[1].hitTestPoint(Main.main._game._chars.x,Main.main._game._chars.y ,true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				
				
				Main.main._game._chars.collBot1();
			}
			else if (platforms[1].hitTestPoint(Main.main._game._chars.x, Main.main._game._chars.y , true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._chars.collLeft1();
				
			}
			else if (platforms[1].hitTestPoint(Main.main._game._chars.x , Main.main._game._chars.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._chars.collRight1();
				
			}
			else if (platforms[1].hitTestPoint(Main.main._game._chars.x , Main.main._game._chars.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._chars.collTop1();
				
			}
			
			else if (platforms[2].hitTestPoint(Main.main._game._ball.x,Main.main._game._ball.y ,true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._ball.collBot();
			}
			else if (platforms[2].hitTestPoint(Main.main._game._ball.x, Main.main._game._ball.y , true))
			{
				Main.main._game._ball.collTop();
				trace("t778597597549455454hfdvhbjdfhjdf");
			}
			else if (platforms[2].hitTestPoint(Main.main._game._ball.x , Main.main._game._ball.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._ball.collRight();
			}
			else if (platforms[2].hitTestPoint(Main.main._game._ball.x , Main.main._game._ball.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._ball.collLeft();
			}
			
			else if (platforms[2].hitTestPoint(Main.main._game._chars.x,Main.main._game._chars.y ,true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._chars.collBot2();
				
			}
			else if (platforms[2].hitTestPoint(Main.main._game._chars.x, Main.main._game._chars.y , true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				
				Main.main._game._chars.collTop2();
			}
			else if (platforms[2].hitTestPoint(Main.main._game._chars.x , Main.main._game._chars.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				
				Main.main._game._chars.collRight2();
			}
			else if (platforms[2].hitTestPoint(Main.main._game._chars.x , Main.main._game._chars.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
			
				Main.main._game._chars.collLeft2();
			}
			
			else if (platforms[2].hitTestPoint(Main.main._game._chars.x,Main.main._game._chars.y ,true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				
				Main.main._game._chars.collBot1();
			}
			else if (platforms[2].hitTestPoint(Main.main._game._chars.x, Main.main._game._chars.y , true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._chars.collTop1();
				
			}
			else if (platforms[2].hitTestPoint(Main.main._game._chars.x , Main.main._game._chars.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._chars.collRight1();
				
			}
			else if (platforms[2].hitTestPoint(Main.main._game._chars.x , Main.main._game._chars.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._chars.collLeft1();
				
			}
			
			else if (platforms[3].hitTestPoint(Main.main._game._ball.x,Main.main._game._ball.y ,true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._ball.collBot();
			}
			else if (platforms[3].hitTestPoint(Main.main._game._ball.x, Main.main._game._ball.y , true))
			{
				Main.main._game._ball.collTop();
				trace("t778597597549455454hfdvhbjdfhjdf");
			}
			else if (platforms[3].hitTestPoint(Main.main._game._ball.x , Main.main._game._ball.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._ball.collRight();
			}
			else if (platforms[3].hitTestPoint(Main.main._game._ball.x , Main.main._game._ball.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._ball.collLeft();
			}
			
			else if (platforms[3].hitTestPoint(Main.main._game._chars.x,Main.main._game._chars.y ,true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._chars.collBot2();
				
			}
			else if (platforms[3].hitTestPoint(Main.main._game._chars.x, Main.main._game._chars.y , true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
			
				Main.main._game._chars.collTop2();
				
			}
			else if (platforms[3].hitTestPoint(Main.main._game._chars.x , Main.main._game._chars.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				
				Main.main._game._chars.collRight2();
				
			}
			else if (platforms[3].hitTestPoint(Main.main._game._chars.x , Main.main._game._chars.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				
				Main.main._game._chars.collLeft2();
			}
			
			else if (platforms[3].hitTestPoint(Main.main._game._chars.x,Main.main._game._chars.y ,true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				
				Main.main._game._chars.collBot1();
			}
			else if (platforms[3].hitTestPoint(Main.main._game._chars.x, Main.main._game._chars.y , true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._chars.collTop1();
				
				
			}
			else if (platforms[3].hitTestPoint(Main.main._game._chars.x , Main.main._game._chars.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._chars.collRight1();
			
				
			}
			else if (platforms[3].hitTestPoint(Main.main._game._chars.x , Main.main._game._chars.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._chars.collLeft1();
				
			}
			
			else if (platforms[4].hitTestPoint(Main.main._game._ball.x,Main.main._game._ball.y ,true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._ball.collBot();
			}
			else if (platforms[4].hitTestPoint(Main.main._game._ball.x, Main.main._game._ball.y , true))
			{
				Main.main._game._ball.collTop();
				trace("t778597597549455454hfdvhbjdfhjdf");
			}
			else if (platforms[4].hitTestPoint(Main.main._game._ball.x , Main.main._game._ball.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._ball.collLeft();
			}
			else if (platforms[4].hitTestPoint(Main.main._game._ball.x , Main.main._game._ball.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._ball.collRight();
			}
			
			else if (platforms[4].hitTestPoint(Main.main._game._chars.x,Main.main._game._chars.y ,true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._chars.collBot2();
				
			}
			else if (platforms[4].hitTestPoint(Main.main._game._chars.x, Main.main._game._chars.y , true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
			
				Main.main._game._chars.collTop2();
			}
			else if (platforms[4].hitTestPoint(Main.main._game._chars.x , Main.main._game._chars.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				
				Main.main._game._chars.collLeft2();
			}
			else if (platforms[4].hitTestPoint(Main.main._game._chars.x , Main.main._game._chars.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				
				Main.main._game._chars.collRight2();
			}
			
			else if (platforms[4].hitTestPoint(Main.main._game._chars.x,Main.main._game._chars.y ,true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				
				Main.main._game._chars.collBot1();
			}
			else if (platforms[4].hitTestPoint(Main.main._game._chars.x, Main.main._game._chars.y , true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._chars.collTop1();
				
			}
			else if (platforms[4].hitTestPoint(Main.main._game._chars.x , Main.main._game._chars.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._chars.collLeft1();
				
			}
			else if (platforms[4].hitTestPoint(Main.main._game._chars.x , Main.main._game._chars.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._chars.collRight1();
				
			}
			
			else if (platforms[5].hitTestPoint(Main.main._game._ball.x,Main.main._game._ball.y ,true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._ball.collBot();
			}
			else if (platforms[5].hitTestPoint(Main.main._game._ball.x, Main.main._game._ball.y , true))
			{
				Main.main._game._ball.collTop();
				trace("t778597597549455454hfdvhbjdfhjdf");
			}
			else if (platforms[5].hitTestPoint(Main.main._game._ball.x , Main.main._game._ball.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._ball.collRight();
			}
			else if (platforms[5].hitTestPoint(Main.main._game._ball.x , Main.main._game._ball.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._ball.collLeft();
			}
			
			else if (platforms[5].hitTestPoint(Main.main._game._chars.x,Main.main._game._chars.y ,true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._chars.collBot2();
				
			}
			else if (platforms[5].hitTestPoint(Main.main._game._chars.x, Main.main._game._chars.y , true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				
				Main.main._game._chars.collTop2();
			}
			else if (platforms[5].hitTestPoint(Main.main._game._chars.x , Main.main._game._chars.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				
				Main.main._game._chars.collRight2();
			}
			else if (platforms[5].hitTestPoint(Main.main._game._chars.x , Main.main._game._chars.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				
				Main.main._game._chars.collLeft2();
			}
			
			else if (platforms[5].hitTestPoint(Main.main._game._chars.x,Main.main._game._chars.y ,true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				
				Main.main._game._chars.collBot1();
			}
			else if (platforms[5].hitTestPoint(Main.main._game._chars.x, Main.main._game._chars.y , true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._chars.collTop1();
				
			}
			else if (platforms[5].hitTestPoint(Main.main._game._chars.x , Main.main._game._chars.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._chars.collRight1();
				
			}
			else if (platforms[5].hitTestPoint(Main.main._game._chars.x , Main.main._game._chars.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._chars.collLeft1();
				
			}
			
			else if (platforms[6].hitTestPoint(Main.main._game._ball.x,Main.main._game._ball.y ,true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._ball.collBot();
			}
			else if (platforms[6].hitTestPoint(Main.main._game._ball.x, Main.main._game._ball.y , true))
			{
				Main.main._game._ball.collTop();
				trace("t778597597549455454hfdvhbjdfhjdf");
			}
			else if (platforms[6].hitTestPoint(Main.main._game._ball.x , Main.main._game._ball.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._ball.collRight();
			}
			else if (platforms[6].hitTestPoint(Main.main._game._ball.x , Main.main._game._ball.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._ball.collLeft();
			}
			
			else if (platforms[6].hitTestPoint(Main.main._game._chars.x,Main.main._game._chars.y ,true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._chars.collBot2();
				
			}
			else if (platforms[6].hitTestPoint(Main.main._game._chars.x, Main.main._game._chars.y , true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
			
				Main.main._game._chars.collTop2();
			}
			else if (platforms[6].hitTestPoint(Main.main._game._chars.x , Main.main._game._chars.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				
				Main.main._game._chars.collRight2();
			}
			else if (platforms[6].hitTestPoint(Main.main._game._chars.x , Main.main._game._chars.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				
				Main.main._game._chars.collLeft2();
			}
			
			else if (platforms[6].hitTestPoint(Main.main._game._chars.x,Main.main._game._chars.y ,true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				
				Main.main._game._chars.collBot1();
			}
			else if (platforms[6].hitTestPoint(Main.main._game._chars.x, Main.main._game._chars.y , true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._chars.collTop1();
				
			}
			else if (platforms[6].hitTestPoint(Main.main._game._chars.x , Main.main._game._chars.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._chars.collRight1();
				
			}
			else if (platforms[6].hitTestPoint(Main.main._game._chars.x , Main.main._game._chars.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._chars.collLeft1();
				
			}
			
			else if (platforms[7].hitTestPoint(Main.main._game._ball.x,Main.main._game._ball.y ,true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._ball.collBot();
			}
			else if (platforms[7].hitTestPoint(Main.main._game._ball.x, Main.main._game._ball.y , true))
			{
				Main.main._game._ball.collTop();
				trace("t778597597549455454hfdvhbjdfhjdf");
			}
			else if (platforms[7].hitTestPoint(Main.main._game._ball.x , Main.main._game._ball.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._ball.collRight();
			}
			else if (platforms[7].hitTestPoint(Main.main._game._ball.x , Main.main._game._ball.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._ball.collLeft();
			}
			
			else if (platforms[7].hitTestPoint(Main.main._game._chars.x,Main.main._game._chars.y ,true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				
				Main.main._game._chars.collBot1();
			}
			else if (platforms[7].hitTestPoint(Main.main._game._chars.x, Main.main._game._chars.y , true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				
				Main.main._game._chars.collTop2();
			}
			else if (platforms[7].hitTestPoint(Main.main._game._chars.x , Main.main._game._chars.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				
				Main.main._game._chars.collLeft2();
			}
			else if (platforms[7].hitTestPoint(Main.main._game._chars.x , Main.main._game._chars.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				
				Main.main._game._chars.collRight2();
			}
			
			else if (platforms[7].hitTestPoint(Main.main._game._chars.x,Main.main._game._chars.y ,true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._chars.collBot2();
				
			}
			else if (platforms[7].hitTestPoint(Main.main._game._chars.x, Main.main._game._chars.y , true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._chars.collTop1();
				
			}
			else if (platforms[7].hitTestPoint(Main.main._game._chars.x , Main.main._game._chars.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._chars.collLeft1();
				
			}
			else if (platforms[7].hitTestPoint(Main.main._game._chars.x , Main.main._game._chars.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._chars.collRight1();
				
			}
			
			else if (platforms[8].hitTestPoint(Main.main._game._ball.x,Main.main._game._ball.y ,true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._ball.collBot();
			}
			else if (platforms[8].hitTestPoint(Main.main._game._ball.x, Main.main._game._ball.y , true))
			{
				Main.main._game._ball.collTop();
				trace("t778597597549455454hfdvhbjdfhjdf");
			}
			else if (platforms[8].hitTestPoint(Main.main._game._ball.x , Main.main._game._ball.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._ball.collRight();
			}
			else if (platforms[8].hitTestPoint(Main.main._game._ball.x , Main.main._game._ball.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._ball.collLeft();
			}
			
			else if (platforms[8].hitTestPoint(Main.main._game._chars.x,Main.main._game._chars.y ,true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._chars.collBot2();
			
			}
			else if (platforms[8].hitTestPoint(Main.main._game._chars.x, Main.main._game._chars.y , true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				
				Main.main._game._chars.collTop2();
			}
			else if (platforms[8].hitTestPoint(Main.main._game._chars.x , Main.main._game._chars.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
			
				Main.main._game._chars.collRight2();
			}
			else if (platforms[8].hitTestPoint(Main.main._game._chars.x , Main.main._game._chars.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				
				Main.main._game._chars.collLeft2();
			}
			
			else if (platforms[8].hitTestPoint(Main.main._game._chars.x,Main.main._game._chars.y ,true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._chars.collBot1();
			}
			else if (platforms[8].hitTestPoint(Main.main._game._chars.x, Main.main._game._chars.y , true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._chars.collTop1();
				
			}
			else if (platforms[8].hitTestPoint(Main.main._game._chars.x , Main.main._game._chars.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._chars.collRight1();
				
			}
			else if (platforms[8].hitTestPoint(Main.main._game._chars.x , Main.main._game._chars.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._chars.collLeft1();
				
			}
			
			else if (platforms[9].hitTestPoint(Main.main._game._ball.x,Main.main._game._ball.y ,true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._ball.collBot();
			}
			else if (platforms[9].hitTestPoint(Main.main._game._ball.x, Main.main._game._ball.y , true))
			{
				Main.main._game._ball.collTop();
				trace("t778597597549455454hfdvhbjdfhjdf");
			}
			else if (platforms[9].hitTestPoint(Main.main._game._ball.x , Main.main._game._ball.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._ball.collRight();
			}
			else if (platforms[9].hitTestPoint(Main.main._game._ball.x , Main.main._game._ball.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._ball.collLeft();
			}
			
			else if (platforms[9].hitTestPoint(Main.main._game._chars.x,Main.main._game._chars.y ,true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._chars.collBot2();
				
			}
			else if (platforms[9].hitTestPoint(Main.main._game._chars.x, Main.main._game._chars.y , true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				
				Main.main._game._chars.collTop2();
			}
			else if (platforms[9].hitTestPoint(Main.main._game._chars.x , Main.main._game._chars.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				
				Main.main._game._chars.collRight2();
			}
			else if (platforms[9].hitTestPoint(Main.main._game._chars.x , Main.main._game._chars.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				
				Main.main._game._chars.collLeft2();
			}
			
			else if (platforms[9].hitTestPoint(Main.main._game._chars.x,Main.main._game._chars.y ,true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				
				Main.main._game._chars.collBot1();
			}
			else if (platforms[9].hitTestPoint(Main.main._game._chars.x, Main.main._game._chars.y , true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._chars.collTop1();
				
			}
			else if (platforms[9].hitTestPoint(Main.main._game._chars.x , Main.main._game._chars.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._chars.collRight1();
				
			}
			else if (platforms[9].hitTestPoint(Main.main._game._chars.x , Main.main._game._chars.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._chars.collLeft1();
				
			}
			
			else if (platforms[10].hitTestPoint(Main.main._game._ball.x,Main.main._game._ball.y ,true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._ball.collBot();
			}
			else if (platforms[10].hitTestPoint(Main.main._game._ball.x, Main.main._game._ball.y , true))
			{
				Main.main._game._ball.collTop();
				trace("t778597597549455454hfdvhbjdfhjdf");
			}
			else if (platforms[10].hitTestPoint(Main.main._game._ball.x , Main.main._game._ball.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._ball.collRight();
			}
			else if (platforms[10].hitTestPoint(Main.main._game._ball.x , Main.main._game._ball.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._ball.collLeft();
			}
			
			else if (platforms[10].hitTestPoint(Main.main._game._chars.x,Main.main._game._chars.y ,true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._chars.collBot2();
				
			}
			else if (platforms[10].hitTestPoint(Main.main._game._chars.x, Main.main._game._chars.y , true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				
				Main.main._game._chars.collTop2();
			}
			else if (platforms[10].hitTestPoint(Main.main._game._chars.x , Main.main._game._chars.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				
				Main.main._game._chars.collRight2();
			}
			else if (platforms[10].hitTestPoint(Main.main._game._chars.x , Main.main._game._chars.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				
				Main.main._game._chars.collLeft2();
			}
			
			else if (platforms[10].hitTestPoint(Main.main._game._chars.x,Main.main._game._chars.y ,true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				
				Main.main._game._chars.collBot1();
			}
			else if (platforms[10].hitTestPoint(Main.main._game._chars.x, Main.main._game._chars.y , true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._chars.collTop1();
				
			}
			else if (platforms[10].hitTestPoint(Main.main._game._chars.x , Main.main._game._chars.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._chars.collRight1();
				
			}
			else if (platforms[10].hitTestPoint(Main.main._game._chars.x , Main.main._game._chars.y, true))
			{
				trace("t778597597549455454hfdvhbjdfhjdf");
				Main.main._game._chars.collLeft1();
				
			}
			
			
		}
	}
}