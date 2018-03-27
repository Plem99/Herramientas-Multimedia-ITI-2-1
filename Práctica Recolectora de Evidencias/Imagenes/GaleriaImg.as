package  {
	import flash.events.Event;
	import flash.display.Loader;
	import flash.text.TextField;
	import flash.display.Sprite;
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.net.URLRequest;
	import flash.net.URLLoader;
	import fl.transitions.Tween;
	import fl.transitions.*;
	import fl.transitions.easing.*;
	public class GaleriaImg {
		
		public function GaleriaImg() {

			var datosXML:XML;
			var numeroElementos:uint;
			var cargador:URLLoader=new URLLoader(new URLRequest("Galeria.xml"));
			var Galeria:Sprite=new Sprite();
			addChild(Galeria);
		
			function cargarLista(event:Event){
				datosXML=new XML (event.target.data);
				numeroElementos=datosXML.mochilas.length();
				setImagenes();
				}
			cargador.addEventListener(Event.COMPLETE,cargarLista);
				
			function setImagenes (){
				var posY:uint=0;
				var posX:uint=0;
			//Imprimirlas en el contenedor "Galeria".
			for(var i:uint=0; i<numeroElementos; i++){
				var ind:Number=(i)%3;
				if(i>0 && ind==0){
					posY++;
					posX=0;
				}
				var imagen:Loader=new Loader();
				imagen.load(new URLRequest(datosXML.mochilas[i].imagen));
				imagen.y=posY*245;
				imagen.x= posX*205;
				Galeria.addChild(imagen);
		
				var texto:TextField=new TextField();
				//info por info que pusimos en xml.
				texto.text=datosXML.mochilas[i].info;
				texto.y=imagen.y+205;
				texto.x=imagen.x;
				Galeria.addChild(texto);
				posX++;
				}
			}
			function setPosition(event:Event){
				Galeria.graphics.beginFill(0xFF0000);
				Galeria.graphics.drawRect(0,0,Galeria.width,Galeria.height);
				Galeria.x=(stage.stageWidth - Galeria.width)/2;
				}
			//==============================================================================================================
			//Funcion para mover la galeria del xml.
			//==============================================================================================================
			function moverGaleria(event:MouseEvent){
				var porcentaje:Number=mouseX/stage.stageWidth;
				trace(Galeria.width);
				}
		}

	}
	
}
