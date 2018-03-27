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
//==============================================================================================================================			
//Variables Práctica 1.
//==============================================================================================================================			
	var nombre:String; //Nombre del usuario
	var sueldo:Number; //Sueldo del usuario
	var sexo:String;   //Seco del usuario
	//Estas variables son las iniciales de Femenino (F) y Masculino (M)
	var F:String="F";
	var M:String="M";
//==============================================================================================================================			
//Variables Práctica 2.
//==============================================================================================================================

//==============================================================================================================================			
//Variables Práctica 3.
//==============================================================================================================================

//==============================================================================================================================			
//Variables Práctica 4.
//==============================================================================================================================
		
//==============================================================================================================================			
//Variables Práctica 5.
//==============================================================================================================================
		
//==============================================================================================================================			
//Variables Práctica 6.
//==============================================================================================================================

//==============================================================================================================================			
//Variables Práctica 7.
//==============================================================================================================================

//==============================================================================================================================			
//Variables Práctica 8.
//==============================================================================================================================

//==============================================================================================================================			
//Variables Práctica 9.
//==============================================================================================================================

//==============================================================================================================================			
//Variables Práctica 10.
//==============================================================================================================================
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
			//
			//p4_btn.addEventListener(MouseEvent.CLICK, Practica4);
			/*p5_btn.addEventListener(MouseEvent.CLICK, Practica5);
			p6_btn.addEventListener(MouseEvent.CLICK, Practica6);
			p7_btn.addEventListener(MouseEvent.CLICK, Practica7);
			p8_btn.addEventListener(MouseEvent.CLICK, Practica8);
			p9_btn.addEventListener(MouseEvent.CLICK, Practica9);
			p10_btn.addEventListener(MouseEvent.CLICK, Practica10);*/
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
			quitar_btn.addEventListener(MouseEvent.CLICK, RChild);
//==============================================================================================================================
			var datosXML:XML;
			var numeroElementos:uint;
			var cargador:URLLoader=new URLLoader(new URLRequest("Galeria.xml"));
			//var Galeria:Sprite=new Sprite();
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
				var ind:Number=(i)%5;
				if(i>0 && ind==0){
					posY++;
					posX=0;
				}
				var imagen:Loader=new Loader();
				imagen.load(new URLRequest(datosXML.mochilas[i].imagen));
				imagen.y=posY*210;
				imagen.x= posX*210;
				Galeria.addChild(imagen);
		
				/*var texto:TextField=new TextField();
				//info por info que pusimos en xml.
				texto.text=datosXML.mochilas[i].info;
				texto.y=imagen.y+205;
				texto.x=imagen.x;
				Galeria.addChild(texto);*/
				posX++;
				}
				//var strongEaseOut1:Tween= new Tween(imagen,"x",Strong.easeOut,imagen.y,imagen.x,5,true);
			}
			function setPosition(event:Event){
				Galeria.graphics.beginFill(0xFF0000);
				Galeria.graphics.drawRect(0,0,Galeria.width,Galeria.height);
				Galeria.x=(stage.stageWidth - Galeria.width)/2;
				}
			function moverGaleria(event:MouseEvent){
				var porcentaje:Number=mouseX/stage.stageWidth;
				trace(Galeria.width);
				}			
		}
		public function RChild (event:MouseEvent):void{
			removeChild(Galeria);
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
		}
//==============================================================================================================================			
//Práctica 1.
//==============================================================================================================================			
		public function Practica1(event:MouseEvent):void{
			gotoAndStop(7);
			borrar_btn.addEventListener(MouseEvent.CLICK,borrarTxt);
			guardar_btn.addEventListener(MouseEvent.CLICK,Fguardar);
			// Solo se debera introducir los carácteres F ó M (Texto en el textinput)
			sexo_txt.text= "Solo F ó M";
		function Fguardar(event:MouseEvent):void {
			//Asignar valores a las variables desde los inputText
			nombre=nombre_txt.text;
			sexo=sexo_txt.text;
			sueldo=Number(sueldo_txt.text);
			//Validar Sueldo, NaN=Not a number
			if (isNaN (sueldo)){            //Si en sueldo no es un numero, entonces mostrara "Solo números"
				//Si es Verdadero, el valor es STRING
				sueldo_txt.text="Solo números";
			}else{                          //Si no, mostrara "Introducir sueldo"
				if(isNaN (sueldo) || sueldo==0){
					//Sueldo=$0
					sueldo_txt.text="Introducir sueldo";
			}else{                //Si no, imprimir el sueldo en el textinput correspondiente
					sueldo=Number(sueldo_txt.text);
					}
				}
			//Condicionaremos las letras F y M, para que solo sean usadas estas letras
			if((sexo==F) || (sexo==M)){
			//Si sexo= a F o =M, entonces no marcara nada, pero si no es verdad, se mostrara "carácter no válido"
					sexo_txt.text="";
					}else{
						sexo_txt.text="Carácter no válido";
					}
						trace (nombre,sueldo,sexo);       //Imprimiremos en consola los datos llenados
				}
		//Funcion de borrar todos los cuadros de texto, se usaran "" para dejar vacío el texto
		function borrarTxt(event:MouseEvent):void {
			nombre_txt.text="";
			sexo_txt.text="";
			sueldo_txt.text="";
				}
		}
		
//==============================================================================================================================			
//Práctica 2.
//==============================================================================================================================		
		public function Practica2(event:MouseEvent):void{
			gotoAndStop(8);
		}
//==============================================================================================================================			
//Práctica 3.
//==============================================================================================================================
		public function Practica3(event:MouseEvent):void{
			gotoAndStop(11);
		}/*
//==============================================================================================================================			
//Práctica 4.
//==============================================================================================================================
		public function Practica4(event:MouseEvent):void{
			gotoAndStop();
		}
//==============================================================================================================================			
//Práctica 5.
//==============================================================================================================================
		public function Practica5(event:MouseEvent):void{
			gotoAndStop();
		}
//==============================================================================================================================			
//Práctica 6.
//==============================================================================================================================
		public function Practica6(event:MouseEvent):void{
			gotoAndStop();
		}
//==============================================================================================================================			
//Práctica 7.
//==============================================================================================================================
		public function Practica7(event:MouseEvent):void{
			gotoAndStop();
		}
//==============================================================================================================================			
//Práctica 8.
//==============================================================================================================================
		public function Practica8(event:MouseEvent):void{
			gotoAndStop();
		}
//==============================================================================================================================			
//Práctica 9.
//==============================================================================================================================
		public function Practica9(event:MouseEvent):void{
			gotoAndStop();
		}
//==============================================================================================================================			
//Práctica 10.
//==============================================================================================================================
		public function Practica10(event:MouseEvent):void{
			gotoAndStop();
		}*/
//==============================================================================================================================			
	}
}