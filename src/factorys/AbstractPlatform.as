package factorys 
{
	import flash.display.Sprite;
	import flash.display.Bitmap;
	/**
	 * ...
	 * @author ...
	 */
	public class AbstractPlatform extends Sprite
	{
		// private vars
		private var _positionX : Number;
		private var _positionY : Number;
		
		
		public function get positionX () : Number {
			x = _positionX;
			_positionX = x;
			return _positionX;
		}
		
		// set the x position
		public function set positionX(positionX : Number) : void {
			_positionX = positionX;
			trace(_positionX);
		}
		
		public function get positionY () : Number {
			y = _positionY;
			_positionY = y;
			return _positionY;
		}
		
		// set the x position
		public function set positionY(positionY : Number) : void {
			_positionY = positionY;
			trace(_positionY);
		}
		
	}

}