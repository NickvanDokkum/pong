package 
{
	import YBall;
	import flash.display.Sprite;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author ... The Hitman
	 */
	public class Second extends Sprite 
	{
		
		public var _Game:YoshaGame;
		public var ball : YBall;
		public function Second():void 
		{
			
			
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			_Game = new YoshaGame;
			
			addChild(_Game);
		}
		
		
		
		
		
	}
	
}