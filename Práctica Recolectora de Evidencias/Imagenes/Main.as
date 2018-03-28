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
	
	public class Main extends MovieClip {
		var Galeria:Sprite=new Sprite();
		var carga:Loader=new Loader();
		
		var datosXML:XML;
		var numeroElementos:uint;
		var imagen:Loader=new Loader();
		
		public function Main() {
			enter_btn.addEventListener(MouseEvent.CLICK, Enter);
		}
//==============================================================================================================================			
//Enter.
//==============================================================================================================================
		public function Enter (event:MouseEvent):void{
			if (contrasena_txt.text==""){
				alert_txt.text="*Introduzca la contraseña";
			}else{
				gotoAndStop(2);
				practicas_btn.addEventListener(MouseEvent.CLICK, Practicas);
				multimedia_btn.addEventListener(MouseEvent.CLICK, Multimedia);
				videojuegos_btn.addEventListener(MouseEvent.CLICK, VideoJuegos);
				info_btn.addEventListener(MouseEvent.CLICK, Informacion);
			}
		}
//==============================================================================================================================			
//Prácticas.
//==============================================================================================================================
		public function Practicas (event:MouseEvent):void{
			gotoAndStop(3);
			multimedia_btn.addEventListener(MouseEvent.CLICK, Multimedia);
			videojuegos_btn.addEventListener(MouseEvent.CLICK, VideoJuegos);
			info_btn.addEventListener(MouseEvent.CLICK, Informacion);
			poli_btn.addEventListener(MouseEvent.CLICK, Inicio);
			
			p1_btn.addEventListener(MouseEvent.CLICK, Practica1);
			p2_btn.addEventListener(MouseEvent.CLICK, Practica2);
			p3_btn.addEventListener(MouseEvent.CLICK, Practica3);
			p4_btn.addEventListener(MouseEvent.CLICK, Practica4);
			p5_btn.addEventListener(MouseEvent.CLICK, Practica5);
			p5_5btn.addEventListener(MouseEvent.CLICK, Practica5_5);
			p6_btn.addEventListener(MouseEvent.CLICK, Practica6);
			p7_btn.addEventListener(MouseEvent.CLICK, Practica7);
			p8_btn.addEventListener(MouseEvent.CLICK, Practica8);
			p9_btn.addEventListener(MouseEvent.CLICK, Practica9);
			p10_btn.addEventListener(MouseEvent.CLICK, Practica10);
		}
//==============================================================================================================================			
//Multimedia.
//==============================================================================================================================
		public function Multimedia (event:MouseEvent):void{
			gotoAndStop(4);
			practicas_btn.addEventListener(MouseEvent.CLICK, Practicas);
			videojuegos_btn.addEventListener(MouseEvent.CLICK, VideoJuegos);
			info_btn.addEventListener(MouseEvent.CLICK, Informacion);
			poli_btn.addEventListener(MouseEvent.CLICK, Inicio);

			m1.addEventListener(MouseEvent.CLICK, Imagen1);
			m2.addEventListener(MouseEvent.CLICK, Imagen2);
			m3.addEventListener(MouseEvent.CLICK, Imagen3);
			m4.addEventListener(MouseEvent.CLICK, Imagen4);
			m5.addEventListener(MouseEvent.CLICK, Imagen5);
			m6.addEventListener(MouseEvent.CLICK, Imagen6);
			m7.addEventListener(MouseEvent.CLICK, Imagen7);
			m8.addEventListener(MouseEvent.CLICK, Imagen8);
			m9.addEventListener(MouseEvent.CLICK, Imagen9);
			m10.addEventListener(MouseEvent.CLICK, Imagen10);
			m11.addEventListener(MouseEvent.CLICK, Imagen11);
			m12.addEventListener(MouseEvent.CLICK, Imagen12);
			m13.addEventListener(MouseEvent.CLICK, Imagen13);
			m14.addEventListener(MouseEvent.CLICK, Imagen14);
			m15.addEventListener(MouseEvent.CLICK, Imagen15);
			m16.addEventListener(MouseEvent.CLICK, Imagen16);
			m17.addEventListener(MouseEvent.CLICK, Imagen17);
			m18.addEventListener(MouseEvent.CLICK, Imagen18);
			m19.addEventListener(MouseEvent.CLICK, Imagen19);
			m20.addEventListener(MouseEvent.CLICK, Imagen20);
	
		}
		public function RChild (event:MouseEvent):void{
			gotoAndStop(4);
			removeChild(Galeria);
			practicas_btn.addEventListener(MouseEvent.CLICK, Practicas);
			videojuegos_btn.addEventListener(MouseEvent.CLICK, VideoJuegos);
			info_btn.addEventListener(MouseEvent.CLICK, Informacion);
			poli_btn.addEventListener(MouseEvent.CLICK, Inicio);

			m1.addEventListener(MouseEvent.CLICK, Imagen1);
			m2.addEventListener(MouseEvent.CLICK, Imagen2);
			m3.addEventListener(MouseEvent.CLICK, Imagen3);
			m4.addEventListener(MouseEvent.CLICK, Imagen4);
			m5.addEventListener(MouseEvent.CLICK, Imagen5);
			m6.addEventListener(MouseEvent.CLICK, Imagen6);
			m7.addEventListener(MouseEvent.CLICK, Imagen7);
			m8.addEventListener(MouseEvent.CLICK, Imagen8);
			m9.addEventListener(MouseEvent.CLICK, Imagen9);
			m10.addEventListener(MouseEvent.CLICK, Imagen10);
			m11.addEventListener(MouseEvent.CLICK, Imagen11);
			m12.addEventListener(MouseEvent.CLICK, Imagen12);
			m13.addEventListener(MouseEvent.CLICK, Imagen13);
			m14.addEventListener(MouseEvent.CLICK, Imagen14);
			m15.addEventListener(MouseEvent.CLICK, Imagen15);
			m16.addEventListener(MouseEvent.CLICK, Imagen16);
			m17.addEventListener(MouseEvent.CLICK, Imagen17);
			m18.addEventListener(MouseEvent.CLICK, Imagen18);
			m19.addEventListener(MouseEvent.CLICK, Imagen19);
			m20.addEventListener(MouseEvent.CLICK, Imagen20);
		}
//==============================================================================================================================			
//VideoJuegos.
//==============================================================================================================================
		public function VideoJuegos (event:MouseEvent):void{
			gotoAndStop(5);
			practicas_btn.addEventListener(MouseEvent.CLICK, Practicas);
			multimedia_btn.addEventListener(MouseEvent.CLICK, Multimedia);
			info_btn.addEventListener(MouseEvent.CLICK, Informacion);
			poli_btn.addEventListener(MouseEvent.CLICK, Inicio);
			col_btn.addEventListener(MouseEvent.CLICK,Practica4 );
		}
//==============================================================================================================================			
//Información.
//==============================================================================================================================
		public function Informacion (event:MouseEvent):void{
			gotoAndStop(6);
			practicas_btn.addEventListener(MouseEvent.CLICK, Practicas);
			multimedia_btn.addEventListener(MouseEvent.CLICK, Multimedia);
			videojuegos_btn.addEventListener(MouseEvent.CLICK, VideoJuegos);
			poli_btn.addEventListener(MouseEvent.CLICK, Inicio);
		}
//==============================================================================================================================			
//Inicio.
//==============================================================================================================================
		public function Inicio (event:MouseEvent):void{
			gotoAndStop(2);
			practicas_btn.addEventListener(MouseEvent.CLICK, Practicas);
			multimedia_btn.addEventListener(MouseEvent.CLICK, Multimedia);
			videojuegos_btn.addEventListener(MouseEvent.CLICK, VideoJuegos);
			info_btn.addEventListener(MouseEvent.CLICK, Informacion);
			poli_btn.addEventListener(MouseEvent.CLICK, Inicio);
			
			removeChild(carga);
		}
//==============================================================================================================================			
//Práctica 1.
//==============================================================================================================================			
		public function Practica1(event:MouseEvent):void{
			gotoAndStop(7);
			var practica:URLRequest = new URLRequest("Práctica 1.swf");
			carga.load(practica);
			addChild(carga);
			carga.x=348;
			carga.y=196;
			
			practica1.visible=true;
			practica2.visible=false;
			practica3.visible=false;
			practica4.visible=false;
			practica5.visible=false;
			practica5_5.visible=false;
			practica6.visible=false;
			practica7.visible=false;
			practica8.visible=false;
			practica9.visible=false;
			practica10.visible=false;
			
		}
		
//==============================================================================================================================			
//Práctica 2.
//==============================================================================================================================		
		public function Practica2(event:MouseEvent):void{
			gotoAndStop(7);
			var practica:URLRequest = new URLRequest("Práctica 2.swf");
			carga.load(practica);
			addChild(carga);
			carga.x=348;
			carga.y=196;
			
			practica1.visible=false;
			practica2.visible=true;
			practica3.visible=false;
			practica4.visible=false;
			practica5.visible=false;
			practica5_5.visible=false;
			practica6.visible=false;
			practica7.visible=false;
			practica8.visible=false;
			practica9.visible=false;
			practica10.visible=false;
		}
//==============================================================================================================================			
//Práctica 3.
//==============================================================================================================================
		public function Practica3(event:MouseEvent):void{
			gotoAndStop(7);
			var practica:URLRequest = new URLRequest("Práctica 3.swf");
			carga.load(practica);
			addChild(carga);
			carga.x=348;
			carga.y=196;
			
			practica1.visible=false;
			practica2.visible=false;
			practica3.visible=true;
			practica4.visible=false;
			practica5.visible=false;
			practica5_5.visible=false;
			practica6.visible=false;
			practica7.visible=false;
			practica8.visible=false;
			practica9.visible=false;
			practica10.visible=false;
		}
//==============================================================================================================================			
//Práctica 4.
//==============================================================================================================================
		public function Practica4(event:MouseEvent):void{
			gotoAndStop(7);
			var practica:URLRequest = new URLRequest("Práctica 4.swf");
			carga.load(practica);
			addChild(carga);
			carga.x=348;
			carga.y=196;
			
			practica1.visible=false;
			practica2.visible=false;
			practica3.visible=false;
			practica4.visible=true;
			practica5.visible=false;
			practica5_5.visible=false;
			practica6.visible=false;
			practica7.visible=false;
			practica8.visible=false;
			practica9.visible=false;
			practica10.visible=false;
		}
//==============================================================================================================================			
//Práctica 5.
//==============================================================================================================================
		public function Practica5(event:MouseEvent):void{
			gotoAndStop(7);
			var practica:URLRequest = new URLRequest("Práctica 5.swf");
			carga.load(practica);
			addChild(carga);
			carga.x=348;
			carga.y=196;
			
			practica1.visible=false;
			practica2.visible=false;
			practica3.visible=false;
			practica4.visible=false;
			practica5.visible=true;
			practica5_5.visible=false;
			practica6.visible=false;
			practica7.visible=false;
			practica8.visible=false;
			practica9.visible=false;
			practica10.visible=false;
		}
//==============================================================================================================================			
//Práctica 5_5.
//==============================================================================================================================
		public function Practica5_5(event:MouseEvent):void{
			gotoAndStop(7);
			var practica:URLRequest = new URLRequest("Práctica 5_5.swf");
			carga.load(practica);
			addChild(carga);
			carga.x=348;
			carga.y=196;
			
			practica1.visible=false;
			practica2.visible=false;
			practica3.visible=false;
			practica4.visible=false;
			practica5.visible=false;
			practica5_5.visible=true;
			practica6.visible=false;
			practica7.visible=false;
			practica8.visible=false;
			practica9.visible=false;
			practica10.visible=false;
		}
//==============================================================================================================================			
//Práctica 6.
//==============================================================================================================================
		public function Practica6(event:MouseEvent):void{
			gotoAndStop(7);
			var practica:URLRequest = new URLRequest("Práctica 6.swf");
			carga.load(practica);
			addChild(carga);
			carga.x=348;
			carga.y=196;
			
			practica1.visible=false;
			practica2.visible=false;
			practica3.visible=false;
			practica4.visible=false;
			practica5.visible=false;
			practica5_5.visible=false;
			practica6.visible=true;
			practica7.visible=false;
			practica8.visible=false;
			practica9.visible=false;
			practica10.visible=false;
		}
//==============================================================================================================================			
//Práctica 7.
//==============================================================================================================================
		public function Practica7(event:MouseEvent):void{
			gotoAndStop(7);
			var practica:URLRequest = new URLRequest("Práctica 7.swf");
			carga.load(practica);
			addChild(carga);
			carga.x=348;
			carga.y=196;
			
			practica1.visible=false;
			practica2.visible=false;
			practica3.visible=false;
			practica4.visible=false;
			practica5.visible=false;
			practica5_5.visible=false;
			practica6.visible=false;
			practica7.visible=true;
			practica8.visible=false;
			practica9.visible=false;
			practica10.visible=false;
		}
//==============================================================================================================================			
//Práctica 8.
//==============================================================================================================================
		public function Practica8(event:MouseEvent):void{
			gotoAndStop(7);
			var practica:URLRequest = new URLRequest("Práctica 8.swf");
			carga.load(practica);
			addChild(carga);
			carga.x=348;
			carga.y=196;
			
			practica1.visible=false;
			practica2.visible=false;
			practica3.visible=false;
			practica4.visible=false;
			practica5.visible=false;
			practica5_5.visible=false;
			practica6.visible=false;
			practica7.visible=false;
			practica8.visible=true;
			practica9.visible=false;
			practica10.visible=false;
		}
//==============================================================================================================================			
//Práctica 9.
//==============================================================================================================================
		public function Practica9(event:MouseEvent):void{
			gotoAndStop(7);
			var practica:URLRequest = new URLRequest("Práctica 9.swf");
			carga.load(practica);
			addChild(carga);
			carga.x=348;
			carga.y=196;
			
			practica1.visible=false;
			practica2.visible=false;
			practica3.visible=false;
			practica4.visible=false;
			practica5.visible=false;
			practica5_5.visible=false;
			practica6.visible=false;
			practica7.visible=false;
			practica8.visible=false;
			practica9.visible=true;
			practica10.visible=false;
		}
//==============================================================================================================================			
//Práctica 10.
//==============================================================================================================================
		public function Practica10(event:MouseEvent):void{
			gotoAndStop(7);
			var practica:URLRequest = new URLRequest("Práctica 10.swf");
			carga.load(practica);
			addChild(carga);
			carga.x=348;
			carga.y=196;
			//carga.width=900;
			//carga.height=800;
			
			practica1.visible=false;
			practica2.visible=false;
			practica3.visible=false;
			practica4.visible=false;
			practica5.visible=false;
			practica5_5.visible=false;
			practica6.visible=false;
			practica7.visible=false;
			practica8.visible=false;
			practica9.visible=false;
			practica10.visible=true;
		}
//=============================================================================================
		public function Imagen1(event:MouseEvent):void{
				gotoAndStop(8);
				quitar_btn.addEventListener(MouseEvent.CLICK, RChild);
				var cargador:URLLoader=new URLLoader(new URLRequest("Galeria.xml"));
				addChild(Galeria)
			function cargarLista(event:Event){
				datosXML=new XML (event.target.data);
				numeroElementos=datosXML.mochilas.length();
				setImagenes();
				}
			cargador.addEventListener(Event.COMPLETE,cargarLista);
				
			function setImagenes (){
				imagen.load(new URLRequest(datosXML.mochilas[0].imagen));
				imagen.y=200;
				imagen.x=500;
				Galeria.addChild(imagen);
			}
		}
//=============================================================================================
		public function Imagen2(event:MouseEvent):void{
				gotoAndStop(8);
				quitar_btn.addEventListener(MouseEvent.CLICK, RChild);
				var cargador:URLLoader=new URLLoader(new URLRequest("Galeria.xml"));
				addChild(Galeria)
			function cargarLista(event:Event){
				datosXML=new XML (event.target.data);
				numeroElementos=datosXML.mochilas.length();
				setImagenes();
				}
			cargador.addEventListener(Event.COMPLETE,cargarLista);
				
			function setImagenes (){
				imagen.load(new URLRequest(datosXML.mochilas[1].imagen));
				imagen.y=200;
				imagen.x=500;
				Galeria.addChild(imagen);
			}
		}
//=============================================================================================
		public function Imagen3(event:MouseEvent):void{
				gotoAndStop(8);
				quitar_btn.addEventListener(MouseEvent.CLICK, RChild);
				var cargador:URLLoader=new URLLoader(new URLRequest("Galeria.xml"));
				addChild(Galeria)
			function cargarLista(event:Event){
				datosXML=new XML (event.target.data);
				numeroElementos=datosXML.mochilas.length();
				setImagenes();
				}
			cargador.addEventListener(Event.COMPLETE,cargarLista);
				
			function setImagenes (){
				imagen.load(new URLRequest(datosXML.mochilas[2].imagen));
				imagen.y=200;
				imagen.x=500;
				Galeria.addChild(imagen);
			}
		}
//=============================================================================================
		public function Imagen4(event:MouseEvent):void{
				gotoAndStop(8);
				quitar_btn.addEventListener(MouseEvent.CLICK, RChild);
				var cargador:URLLoader=new URLLoader(new URLRequest("Galeria.xml"));
				addChild(Galeria)
			function cargarLista(event:Event){
				datosXML=new XML (event.target.data);
				numeroElementos=datosXML.mochilas.length();
				setImagenes();
				}
			cargador.addEventListener(Event.COMPLETE,cargarLista);
				
			function setImagenes (){
				imagen.load(new URLRequest(datosXML.mochilas[3].imagen));
				imagen.y=200;
				imagen.x=500;
				Galeria.addChild(imagen);
			}
		}
//=============================================================================================
		public function Imagen5(event:MouseEvent):void{
				gotoAndStop(8);
				quitar_btn.addEventListener(MouseEvent.CLICK, RChild);
				var cargador:URLLoader=new URLLoader(new URLRequest("Galeria.xml"));
				addChild(Galeria)
			function cargarLista(event:Event){
				datosXML=new XML (event.target.data);
				numeroElementos=datosXML.mochilas.length();
				setImagenes();
				}
			cargador.addEventListener(Event.COMPLETE,cargarLista);
				
			function setImagenes (){
				imagen.load(new URLRequest(datosXML.mochilas[4].imagen));
				imagen.y=200;
				imagen.x=500;
				Galeria.addChild(imagen);
			}
		}
//=============================================================================================
		public function Imagen6(event:MouseEvent):void{
				gotoAndStop(8);
				quitar_btn.addEventListener(MouseEvent.CLICK, RChild);
				var cargador:URLLoader=new URLLoader(new URLRequest("Galeria.xml"));
				addChild(Galeria)
			function cargarLista(event:Event){
				datosXML=new XML (event.target.data);
				numeroElementos=datosXML.mochilas.length();
				setImagenes();
				}
			cargador.addEventListener(Event.COMPLETE,cargarLista);
				
			function setImagenes (){
				imagen.load(new URLRequest(datosXML.mochilas[5].imagen));
				imagen.y=200;
				imagen.x=500;
				Galeria.addChild(imagen);
			}
		}
//=============================================================================================
		public function Imagen7(event:MouseEvent):void{
				gotoAndStop(8);
				quitar_btn.addEventListener(MouseEvent.CLICK, RChild);
				var cargador:URLLoader=new URLLoader(new URLRequest("Galeria.xml"));
				addChild(Galeria)
			function cargarLista(event:Event){
				datosXML=new XML (event.target.data);
				numeroElementos=datosXML.mochilas.length();
				setImagenes();
				}
			cargador.addEventListener(Event.COMPLETE,cargarLista);
				
			function setImagenes (){
				imagen.load(new URLRequest(datosXML.mochilas[6].imagen));
				imagen.y=200;
				imagen.x=500;
				Galeria.addChild(imagen);
			}
		}
//=============================================================================================
		public function Imagen8(event:MouseEvent):void{
				gotoAndStop(8);
				quitar_btn.addEventListener(MouseEvent.CLICK, RChild);
				var cargador:URLLoader=new URLLoader(new URLRequest("Galeria.xml"));
				addChild(Galeria)
			function cargarLista(event:Event){
				datosXML=new XML (event.target.data);
				numeroElementos=datosXML.mochilas.length();
				setImagenes();
				}
			cargador.addEventListener(Event.COMPLETE,cargarLista);
				
			function setImagenes (){
				imagen.load(new URLRequest(datosXML.mochilas[7].imagen));
				imagen.y=200;
				imagen.x=500;
				Galeria.addChild(imagen);
			}
		}
//=============================================================================================
		public function Imagen9(event:MouseEvent):void{
				gotoAndStop(8);
				quitar_btn.addEventListener(MouseEvent.CLICK, RChild);
				var cargador:URLLoader=new URLLoader(new URLRequest("Galeria.xml"));
				addChild(Galeria)
			function cargarLista(event:Event){
				datosXML=new XML (event.target.data);
				numeroElementos=datosXML.mochilas.length();
				setImagenes();
				}
			cargador.addEventListener(Event.COMPLETE,cargarLista);
				
			function setImagenes (){
				imagen.load(new URLRequest(datosXML.mochilas[8].imagen));
				imagen.y=200;
				imagen.x=500;
				Galeria.addChild(imagen);
			}
		}
//=============================================================================================
		public function Imagen10(event:MouseEvent):void{
				gotoAndStop(8);
				quitar_btn.addEventListener(MouseEvent.CLICK, RChild);
				var cargador:URLLoader=new URLLoader(new URLRequest("Galeria.xml"));
				addChild(Galeria)
			function cargarLista(event:Event){
				datosXML=new XML (event.target.data);
				numeroElementos=datosXML.mochilas.length();
				setImagenes();
				}
			cargador.addEventListener(Event.COMPLETE,cargarLista);
				
			function setImagenes (){
				imagen.load(new URLRequest(datosXML.mochilas[9].imagen));
				imagen.y=200;
				imagen.x=500;
				Galeria.addChild(imagen);
			}
		}
//=============================================================================================
		public function Imagen11(event:MouseEvent):void{
				gotoAndStop(8);
				quitar_btn.addEventListener(MouseEvent.CLICK, RChild);
				var cargador:URLLoader=new URLLoader(new URLRequest("Galeria.xml"));
				addChild(Galeria)
			function cargarLista(event:Event){
				datosXML=new XML (event.target.data);
				numeroElementos=datosXML.mochilas.length();
				setImagenes();
				}
			cargador.addEventListener(Event.COMPLETE,cargarLista);
				
			function setImagenes (){
				imagen.load(new URLRequest(datosXML.mochilas[10].imagen));
				imagen.y=200;
				imagen.x=500;
				Galeria.addChild(imagen);
			}
		}
//=============================================================================================
		public function Imagen12(event:MouseEvent):void{
				gotoAndStop(8);
				quitar_btn.addEventListener(MouseEvent.CLICK, RChild);
				var cargador:URLLoader=new URLLoader(new URLRequest("Galeria.xml"));
				addChild(Galeria)
			function cargarLista(event:Event){
				datosXML=new XML (event.target.data);
				numeroElementos=datosXML.mochilas.length();
				setImagenes();
				}
			cargador.addEventListener(Event.COMPLETE,cargarLista);
				
			function setImagenes (){
				imagen.load(new URLRequest(datosXML.mochilas[11].imagen));
				imagen.y=200;
				imagen.x=500;
				Galeria.addChild(imagen);
			}
		}
//=============================================================================================
		public function Imagen13(event:MouseEvent):void{
				gotoAndStop(8);
				quitar_btn.addEventListener(MouseEvent.CLICK, RChild);
				var cargador:URLLoader=new URLLoader(new URLRequest("Galeria.xml"));
				addChild(Galeria)
			function cargarLista(event:Event){
				datosXML=new XML (event.target.data);
				numeroElementos=datosXML.mochilas.length();
				setImagenes();
				}
			cargador.addEventListener(Event.COMPLETE,cargarLista);
				
			function setImagenes (){
				imagen.load(new URLRequest(datosXML.mochilas[12].imagen));
				imagen.y=200;
				imagen.x=500;
				Galeria.addChild(imagen);
			}
		}
//=============================================================================================
		public function Imagen14(event:MouseEvent):void{
				gotoAndStop(8);
				quitar_btn.addEventListener(MouseEvent.CLICK, RChild);
				var cargador:URLLoader=new URLLoader(new URLRequest("Galeria.xml"));
				addChild(Galeria)
			function cargarLista(event:Event){
				datosXML=new XML (event.target.data);
				numeroElementos=datosXML.mochilas.length();
				setImagenes();
				}
			cargador.addEventListener(Event.COMPLETE,cargarLista);
				
			function setImagenes (){
				imagen.load(new URLRequest(datosXML.mochilas[13].imagen));
				imagen.y=200;
				imagen.x=500;
				Galeria.addChild(imagen);
			}
		}
//=============================================================================================
		public function Imagen15(event:MouseEvent):void{
				gotoAndStop(8);
				quitar_btn.addEventListener(MouseEvent.CLICK, RChild);
				var cargador:URLLoader=new URLLoader(new URLRequest("Galeria.xml"));
				addChild(Galeria)
			function cargarLista(event:Event){
				datosXML=new XML (event.target.data);
				numeroElementos=datosXML.mochilas.length();
				setImagenes();
				}
			cargador.addEventListener(Event.COMPLETE,cargarLista);
				
			function setImagenes (){
				imagen.load(new URLRequest(datosXML.mochilas[14].imagen));
				imagen.y=200;
				imagen.x=500;
				Galeria.addChild(imagen);
			}
		}
//=============================================================================================
		public function Imagen16(event:MouseEvent):void{
				gotoAndStop(8);
				quitar_btn.addEventListener(MouseEvent.CLICK, RChild);
				var cargador:URLLoader=new URLLoader(new URLRequest("Galeria.xml"));
				addChild(Galeria)
			function cargarLista(event:Event){
				datosXML=new XML (event.target.data);
				numeroElementos=datosXML.mochilas.length();
				setImagenes();
				}
			cargador.addEventListener(Event.COMPLETE,cargarLista);
				
			function setImagenes (){
				imagen.load(new URLRequest(datosXML.mochilas[15].imagen));
				imagen.y=200;
				imagen.x=500;
				Galeria.addChild(imagen);
			}
		}
//=============================================================================================
		public function Imagen17(event:MouseEvent):void{
				gotoAndStop(8);
				quitar_btn.addEventListener(MouseEvent.CLICK, RChild);
				var cargador:URLLoader=new URLLoader(new URLRequest("Galeria.xml"));
				addChild(Galeria)
			function cargarLista(event:Event){
				datosXML=new XML (event.target.data);
				numeroElementos=datosXML.mochilas.length();
				setImagenes();
				}
			cargador.addEventListener(Event.COMPLETE,cargarLista);
				
			function setImagenes (){
				imagen.load(new URLRequest(datosXML.mochilas[16].imagen));
				imagen.y=200;
				imagen.x=500;
				Galeria.addChild(imagen);
			}
		}
//=============================================================================================
		public function Imagen18(event:MouseEvent):void{
				gotoAndStop(8);
				quitar_btn.addEventListener(MouseEvent.CLICK, RChild);
				var cargador:URLLoader=new URLLoader(new URLRequest("Galeria.xml"));
				addChild(Galeria)
			function cargarLista(event:Event){
				datosXML=new XML (event.target.data);
				numeroElementos=datosXML.mochilas.length();
				setImagenes();
				}
			cargador.addEventListener(Event.COMPLETE,cargarLista);
				
			function setImagenes (){
				imagen.load(new URLRequest(datosXML.mochilas[17].imagen));
				imagen.y=200;
				imagen.x=500;
				Galeria.addChild(imagen);
			}
		}
//=============================================================================================
		public function Imagen19(event:MouseEvent):void{
				gotoAndStop(8);
				quitar_btn.addEventListener(MouseEvent.CLICK, RChild);
				var cargador:URLLoader=new URLLoader(new URLRequest("Galeria.xml"));
				addChild(Galeria)
			function cargarLista(event:Event){
				datosXML=new XML (event.target.data);
				numeroElementos=datosXML.mochilas.length();
				setImagenes();
				}
			cargador.addEventListener(Event.COMPLETE,cargarLista);
				
			function setImagenes (){
				imagen.load(new URLRequest(datosXML.mochilas[18].imagen));
				imagen.y=200;
				imagen.x=500;
				Galeria.addChild(imagen);
			}
		}
//=============================================================================================
		public function Imagen20(event:MouseEvent):void{
				gotoAndStop(8);
				quitar_btn.addEventListener(MouseEvent.CLICK, RChild);
				var cargador:URLLoader=new URLLoader(new URLRequest("Galeria.xml"));
				addChild(Galeria)
			function cargarLista(event:Event){
				datosXML=new XML (event.target.data);
				numeroElementos=datosXML.mochilas.length();
				setImagenes();
				}
			cargador.addEventListener(Event.COMPLETE,cargarLista);
				
			function setImagenes (){
				imagen.load(new URLRequest(datosXML.mochilas[19].imagen));
				imagen.y=200;
				imagen.x=500;
				Galeria.addChild(imagen);
			}
		}
		
	}

}