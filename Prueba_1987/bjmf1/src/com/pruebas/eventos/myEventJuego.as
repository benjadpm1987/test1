package com.pruebas.eventos
{
	import flash.events.Event;
	
	public class myEventJuego extends Event
	{
		public static const _RIGHT:String = "right";
		public static const _DOWN:String = "down";
		public static const _LEFT:String = "left";
		public static const _UP:String = "up";
		
		public var contenedor:String="Inser Coin";
		
		public function myEventJuego(type:String = null)
		{
			super(type);
		}
	}
}