package  {
	//Importamos las librerias adecuadas.
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import fl.transitions.Tween;
	import fl.transitions.easing.*;
	
	public class General_as extends MovieClip {
			//Variables para guardar los valores de arrays y contadores.
			var GuardarNomb:Array=new Array();
			var GuardarCalif:Array=new Array();
			var GuardarNum:Array=new Array();
			var numeroscont:Number=0;
			var contnumeros:Number=0;
			var promedio1:Number=0;
			var nulo:int;
		
		public function General_as() {
			//Tweens.
			var CalT:Tween=new Tween(cal_btn,"y",Strong.easeOut,-1000,264.6,2,true);
			var NulosT:Tween=new Tween(nulos_btn,"y",Strong.easeOut,-1000,264.6,2,true);
			//Llamamos a los eventos de los botones.
			cal_btn.addEventListener(MouseEvent.CLICK,Calificacion);
			nulos_btn.addEventListener(MouseEvent.CLICK,Nulo);
			
		}
		public function Calificacion (event:MouseEvent):void{
			//En este evento hara que se vaya al frame 2 y se agregaran mas eventos de botones.
			gotoAndStop(2);
			guardar_btn.addEventListener(MouseEvent.CLICK,Guardar);
			calcular_btn.addEventListener(MouseEvent.CLICK,Calcular);
			borrar_btn.addEventListener(MouseEvent.CLICK,Borrar);
			volver_btn.addEventListener(MouseEvent.CLICK,Volver);
			
		}
		public function Guardar(event:MouseEvent):void{
			//En esta funcion es donde guardaremos los nombres y las calificaciones de cada persona.
			var calificacion:Number;
			calificacion=Number(calif.text);
			promedio1=Number(promedio.text);
			//Declaramos 2 variables boleanas, para identificar si los 2 datos que ingresaresmos son verdaderos(si se cumplen las condiciones
			//para que asi se cuante).
			var cal:Boolean=false;
			var nom:Boolean=false;
			if (nombres.text==""){ //Si esta vacio apareceran advertencias.
				alertnombres.text="*Ingrese un Nombre";
				nom=false; //Si se cumple este se declarara una variable en falsa.
			}else{
				alertnombres.text="";
				nom=true; //Cuando se cumple la condicion se declarara verdadera.
			}
			if ((isNaN(calificacion))||(calif.text=="")){
				alertcalif.text="*Ingrese un Nombre";
				cal=false;
			}else{
				alertcalif.text="";
				cal=true;
			}
			if (nom==true && cal==true){ //Si ambos datos son verdaderos se guardaran los valores de todos los datos que se ingresen.
				GuardarNomb.push(nombres.text);
				trace(GuardarNomb);
				GuardarCalif.push(calificacion);
				trace(GuardarCalif);
				contnumeros++; //Se aumentara a un contador para identificar cuantas personas estan usandolo.
				trace(contnumeros);
				numeroscont=numeroscont+calificacion; //Despues en otra variable se hara la suma de esas calificaciones ingresadas.
				trace(numeroscont);
				
			}
			
		}
		public function Calcular (event:MouseEvent):void{
			//Funcion para calcular las calificaciones de todos.
			trace("Si jalo1");
			//En el cuadro de texto de resultados se mostraran todos los datos agregados.
			todo_txt.text=("Nombre: "+GuardarNomb+" , "+"Calficación: "+GuardarCalif)+"\n";
			//En el cuadro de promedio hace la operacion de la variable con todos los promedios y los divide entre 
			//la cantidad de todos los que ingresaron su promedio.
			promedio.text=String((promedio1+numeroscont)/contnumeros); //Hace la operacion del promedio de todas las calif.
			
		}
		public function Borrar (event:MouseEvent):void{
			//Esta funcion borrar todos los cuadros de texto (excepto el de resultados).
			trace("Si jalo2");
			nombres.text="";
			calif.text="";
			promedio.text="";
			
		}
		public function Volver (event:MouseEvent):void{
			//Funcion para volver a la portada.
			trace("Si jalo3");
			gotoAndStop(1);
			cal_btn.addEventListener(MouseEvent.CLICK,Calificacion);
			nulos_btn.addEventListener(MouseEvent.CLICK,Nulo);
			promedio1=0;
			numeroscont=0;
			contnumeros=0;
			
		}
		public function Nulo(event:MouseEvent):void{
			//En este evento hara que se vaya al frame 3 y se agregaran mas eventos de botones.
			gotoAndStop(3);
			guardar2_btn.addEventListener(MouseEvent.CLICK,Guardar2);
			calcular2_btn.addEventListener(MouseEvent.CLICK,Calcular2);
			borrar2_btn.addEventListener(MouseEvent.CLICK,Borrar2);
			volver2_btn.addEventListener(MouseEvent.CLICK,Volver2);
			
		}
		public function Guardar2 (event:MouseEvent):void{
			//Variable para guardar los numeros.
			GuardarNum.push(numero.text);
			trace(GuardarNum);
			if (numero.text==""){
				trace("Es nulo");
				nulo++;
				trace(nulo);
			}
			
		}
		public function Calcular2 (event:MouseEvent):void{
			//En el cuadro de texto de resultados se mostraran todos los datos agregados.
			trace("Si jalo4");
			todo2_txt.text=String(GuardarNum+"\n"+"Valor nulo en la posicion: "+nulo+" del Array"+"\n");
			
		}
		public function Borrar2 (event:MouseEvent):void{
			//Funcion para borrar el cuadro de texto.
			trace("Si jalo5");
			numero.text="";
			
		}
		public function Volver2 (event:MouseEvent):void{
			//Funcion para volver a la portada.
			trace("Si jalo6");
			gotoAndStop(1);
			cal_btn.addEventListener(MouseEvent.CLICK,Calificacion);
			nulos_btn.addEventListener(MouseEvent.CLICK,Nulo);
			
		}
	}
	
}
