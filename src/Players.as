package  
{
	import flash.display.Bitmap;
	import flash.display.MovieClip;
	import flash.display.Bitmap;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	/**
	 * ...
	 * @author Nick van Dokkum
	 */
	public class Players 
	{
		private var speed:Number = 10;
		private var gravity1:Number = 0;
		private var gravity2:Number = 0;
		private var collision1:Boolean = true;
		private var collision2:Boolean = true;
		
		[Embed(source="../../art/chara_design.jpg")]
		private var Char1:Class;
		[Embed(source="../../art/chara_design.jpg")]
		private var Char2:Class;
		
		private var player1:Bitmap;
		private var player2:Bitmap;
		
		private var buttonW:Boolean = false;
		private var buttonA:Boolean = false;
		private var buttonS:Boolean = false;
		private var buttonD:Boolean = false;
		private var buttonUp:Boolean = false;
		private var buttonLeft:Boolean = false;
		private var buttonDown:Boolean = false;
		private var buttonRight:Boolean = false;
			
		public function Players() 
		{
			
			Main.main.stage.addEventListener(Event.ENTER_FRAME, updateFunction);
			Main.main.stage.addEventListener(KeyboardEvent.KEY_DOWN, onKeyDown);
			Main.main.stage.addEventListener(KeyboardEvent.KEY_UP, onKeyUp);
			
			player1 = new Char1();
			player1.y = 600;
			Main.main.stage.addChild(player1);
			
			player2 = new Char2();
			player2.y = 600;
			Main.main.stage.addChild(player2);
		}
		public function onKeyDown(e:KeyboardEvent):void {
			if (e.keyCode == 87) {
				buttonW = true;
			}
			if (e.keyCode == 65) {
				buttonA = true;
			}
			if (e.keyCode == 83) {
				buttonS = true;
			}
			if (e.keyCode == 68) {
				buttonD = true;
			}
			if (e.keyCode == 38) {
				buttonUp = true;
			}
			if (e.keyCode == 37) {
				buttonLeft = true;
			}
			if (e.keyCode == 40) {
				buttonDown = true;
			}
			if (e.keyCode == 39) {
				buttonRight = true;
			}
		}
		public function onKeyUp(e:KeyboardEvent):void {
			if (e.keyCode == 87) {
				buttonW = false;
			}
			if (e.keyCode == 65) {
				buttonA = false;
			}
			if (e.keyCode == 83) {
				buttonS = false;
			}
			if (e.keyCode == 68) {
				buttonD = false;
			}
			if (e.keyCode == 38) {
				buttonUp = false;
			}
			if (e.keyCode == 37) {
				buttonLeft = false;
			}
			if (e.keyCode == 40) {
				buttonDown = false;
			}
			if (e.keyCode == 39) {
				buttonRight = false;
			}
		}
		private function updateFunction(e:Event):void
		{
			if (!collision1) {
				gravity1 += 0.2;
				if (player1.y > 600) {
					gravity1 = 0;
					collision1 = true;
				}
			}
			while (player1.y > 600) {
				player1.y --;
			}
			if (!collision2) {
				gravity2 += 0.2;
				if (player2.y > 600) {
					gravity2 = 0;
					collision2 = true;
				}
			}
			while (player2.y > 600) {
				player2.y --;
			}
			player1.y += gravity1;
			player2.y += gravity2;
			if (buttonUp == true) {
				if(player2.y > 0 && collision2 == true){
					gravity2 = -13;
					collision2 = false;
				}
			}
			if (buttonLeft == true) {
				if(player2.x > 0){
					player2.x -= speed;
				}
			}
			if (buttonDown == true) {
				if (gravity2 != 0) {
					gravity2 += 0.3;
				}
			}
			if (buttonRight == true) {
				if(player2.x < Main.main.stage.stageWidth - player2.width){
					player2.x += speed;
				}
			}
			if (buttonW == true) {
				if(player1.y > 0 && collision1 == true){
					gravity1 = -13;
					collision1 = false;
				}
			}
			if (buttonA == true) {
				if(player1.x > 0){
					player1.x -= speed;
				}
			}
			if (buttonS == true) {
				if(gravity1 != 0){
					gravity1 += 0.3;
				}
			}
			if (buttonD == true) {
				if(player1.y < Main.main.stage.stageWidth - player2.width){
					player1.x += speed;
				}
			}
		}
	}
}