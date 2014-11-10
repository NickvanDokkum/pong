package factorys 
{
	/**
	 * ...
	 * @author ...
	 */
	import flash.display.Sprite;
	import flash.display.Bitmap;
	import flash.events.Event;
	public class Ball extends Sprite
	{
		private var fly:Boolean = true;
		[Embed(source="../../lib/missile.png")]
		private var ArtBall:Class;
		private var artBall:Bitmap;
		public function Ball() 
		{
			addEventListener(Event.ADDED_TO_STAGE,init);
			artBall = new ArtBall();
			addChild(artBall);
			hitTestObject(artBall);
			scaleX = 0.2;
			scaleY = 0.2;
			
			x = 830;
			y = 20;
		}
		
		private function init(e:Event):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			addEventListener(Event.ENTER_FRAME, loop);
		}
		
		private function loop(e:Event):void 
		{
			if(fly == true)
			{
				y += 5;
			}
		}
		
	}

}