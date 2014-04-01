package com.pruebas.contenido
{
	import com.pruebas.eventos.myEventJuego;
	
	import flash.display.Sprite;
	import flash.events.Event;
	
	public class Jugador extends Sprite
	{
		private var _avx:Number =10;
		private var _avy:Number =0;
		
		public function Jugador()
		{
			super();
			CrearJugador();
		}
		
		public function get avy():Number
		{
			return _avy;
		}

		public function set avy(value:Number):void
		{
			_avy = value;
		}

		public function get avx():Number
		{
			return _avx;
		}

		public function set avx(value:Number):void
		{
			_avx = value;
		}

		private function CrearJugador():void
		{
			//Creando al Jugador
			
			var mcJugador:mc_jugador = new mc_jugador();
			this.addChild(mcJugador);
			this.addEventListener(Event.ENTER_FRAME,Mover,false,0,true);
			
		}
		
		protected function Mover(event:Event):void
		{
			
			this.x+=avx;
			this.y+=avy;
			
			if(this.x==700){
				var ev:myEventJuego = new myEventJuego(myEventJuego._DOWN);
				this.dispatchEvent( ev);
			}
			
			if(this.y==520){
				this.dispatchEvent(  new myEventJuego(myEventJuego._LEFT));
			}
			
			if(this.x==0){
				this.dispatchEvent(  new myEventJuego(myEventJuego._UP));
			}
			
			if(this.y==0){
				this.dispatchEvent(  new myEventJuego(myEventJuego._RIGHT));
			}
			
			if(this.y==0 && this.x==700){
				this.dispatchEvent(  new myEventJuego(myEventJuego._DOWN));
			}
		
		}
	}
}