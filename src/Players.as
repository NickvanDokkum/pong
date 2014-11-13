package  
{
	import flash.display.Bitmap;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.KeyboardEvent;

	import flash.events.TimerEvent;
	import flash.utils.Timer;

	/**
	 * ...
	 * @author Nick van Dokkum
	 */
	public class Players extends Sprite
	{
		private var speed:Number = 10;
		private var gravity1:Number = 0;
		private var gravity2:Number = 0;
		private var collision11:Boolean = false;	//boven
		private var collision12:Boolean = false;	// links
		private var collision13:Boolean = false;	// beneden
		private var collision14:Boolean = false;	// rechts
		private var collision21:Boolean = false;	// boven
		private var collision22:Boolean = false;	// links
		private var collision23:Boolean = false;	// beneden
		private var collision24:Boolean = false;	// rechts
		
		[Embed(source="../art/chara_design.jpg")]
		private var Char1:Class;
		[Embed(source="../art/chara_design.jpg")]
		private var Char2:Class;
		
		private var player1:Bitmap;
		private var player2:Bitmap;
		private var player1Right:Boolean;
		private var player2Right:Boolean;
		
		private var buttonW:Boolean = false;
		private var buttonA:Boolean = false;
		private var buttonS:Boolean = false;
		private var buttonD:Boolean = false;
		private var buttonUp:Boolean = false;
		private var buttonLeft:Boolean = false;
		private var buttonDown:Boolean = false;
		private var buttonRight:Boolean = false;

		private var buttonSpace:Boolean = false;
		private var buttonEnter:Boolean = false;
		private var attacking1:Boolean = false;
		private var attacking2:Boolean = false;
		
		private var attackTimer1:Timer = new Timer(750, 1);
		private var attackTimer2:Timer = new Timer(750, 1);
		

		public function Players() 
		{
			
			Main.main.stage.addEventListener(Event.ENTER_FRAME, updateFunction);
			Main.main.stage.addEventListener(KeyboardEvent.KEY_DOWN, onKeyDown);
			Main.main.stage.addEventListener(KeyboardEvent.KEY_UP, onKeyUp);
			
			player1 = new Char1();
			player1.y = 600;
			player1.x = 50;
			Main.main.stage.addChild(player1);
			
			player2 = new Char2();
			player2.x = 1000;
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
			if (e.keyCode == 32) {
				buttonSpace = true;
			}
			if (e.keyCode == 13) {
				buttonEnter = true;
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
			if (e.keyCode == 32) {
				buttonSpace = false;
			}
			if (e.keyCode == 13) {
				buttonEnter = false;
			}
		}
		private function updateFunction(e:Event):void
		{
			if (!collision13) {
				gravity1 += 0.2;
			}
			else
			{
				gravity1 = 0;
			}
			if (!collision23) {
				gravity2 += 0.2;
			}
			else
			{
				gravity2 = 0;
			}
			if (collision11) {
				gravity1 = -gravity1;
			}
			if (collision21) {
				gravity2 = -gravity2;
			}
			player1.y += gravity1;
			player2.y += gravity2;
			if (buttonUp == true) {
				if(collision23){
					gravity2 = -13;
					collision23 = false;
				}
			}
			if (buttonLeft == true) {
				if(!collision22){
					player2.x -= speed;
				}
				if (player2Right == false) {
					player2Right = true;
					player2.scaleX = -1;
					player2.x += player2.width;
				}
			}
			if (buttonDown == true) {
				if (!collision23) {
					gravity2 += 0.3;
				}
			}
			if (buttonRight == true) {
				if(!collision24){
					player2.x += speed;
				}
				if (player2Right)
				{
					player2.scaleX = 1;
					player2Right = false;
					player2.x -= player2.width;
				}
			}
			if (buttonW == true) {
				if(!collision13){
					gravity1 = -13;
					collision11 = false;
				}
			}
			if (buttonA == true) {
				if(!collision13){
					player1.x -= speed;
				}
				if (player1Right == false) {
					player1.scaleX = -1;
					player1Right = true;
					player1.x += player2.width;
				}
			}
			if (buttonS == true) {
				if(!collision13){
					gravity1 += 0.3;
				}
			}
			if (buttonD == true) {
				if(!collision14){
					player1.x += speed;
				}
				if (player1Right) {
					player1.scaleX = 1;
					player1Right = false;
					player1.x -= player1.width;
				}
			}
			if (buttonSpace == true && attacking1 == false)
			{
				attackTimer1.addEventListener(TimerEvent.TIMER, timerReset1);
				attackTimer1.start();
				attacking1 = true;
				trace("attacking");
			}
			if (buttonEnter == true && attacking2 == false)
			{
				attackTimer2.addEventListener(TimerEvent.TIMER, timerReset2);
				attackTimer2.start();
				attacking2 = true;
				trace("attacking2");
			}
		}
		private function timerReset1(event:TimerEvent):void {
			attacking1 = false;
			trace("attacked");
		}
		private function timerReset2(event:TimerEvent):void {
			attacking2 = false;
			trace("attacked2");

		}
		public function restart()
		{
			player1.x = 50;
			player1.y = 600;
			player2.x = 1000;
			player2.y = 600;
		}
		public function destroy()
		{
			Main.main.stage.removeChild(player1);
			Main.main.stage.removeChild(player2);
		}
		public function collTop1() {
			collision11 = true;
		}
		public function noCollTop1() {
			collision11 = false;
		}
		public function collLeft1() {
			collision12 = true;
		}
		public function noCollLeft1() {
			collision12 = false;
		}
		public function collBot1() {
			collision13 = true;
		}
		public function noCollBot1() {
			collision13 = false;
		}
		public function collRight1() {
			collision14 = true;
		}
		public function noCollRight1() {
			collision14 = false;
		}
		public function collTop2() {
			collision21 = true;
		}
		public function noCollTop2() {
			collision21 = false;
		}
		public function collLeft2() {
			collision22 = true;
		}
		public function noCollLeft2() {
			collision22 = false;
		}
		public function collBot2() {
			collision23 = true;
		}
		public function noCollBot2() {
			collision23 = false;
		}
		public function collRight2() {
			collision24 = true;
		}
		public function noCollRight2() {
			collision24 = false;
		}
	}
}