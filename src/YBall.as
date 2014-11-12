package  {
	/**
	 * ...
	 * @author ... The Hitman
	 */
	import flash.display.Sprite;
	import flash.display.Bitmap;
	import flash.events.Event;
	
	// temporary class. not perminant
	public class YBall extends Sprite
	{
		public var fly:Boolean = true;
		[Embed(source="../lib/missile.png")]
		private var ArtBall:Class;
		private var artBall:Bitmap;
		
		
		public function YBall() 
		{
			
			// adding a event listener
			addEventListener(Event.ADDED_TO_STAGE, init);
			
			// temporary art/ball
			artBall = new ArtBall();
			addChild(artBall);
			
			// temporary scale
			scaleX = 0.2;
			scaleY = 0.2;
			
			// temporary position
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