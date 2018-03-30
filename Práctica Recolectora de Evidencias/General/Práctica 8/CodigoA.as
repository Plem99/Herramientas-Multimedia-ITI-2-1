package  {
	
	import flash.display.MovieClip;
	public class CodigoA extends MovieClip{
			// Se crean 2 variables para almacenar las areas
			private var areaCirculo:Number;
			private var areaTriangulo:Number;
		/*public function Codigo () {
			// Se recibe un dato por parametro y despues se multiplica
			var radio:Number=val;
			areaCiculo=3.1416*(radio*radio);
		}*/
		public function AreaCirculo (val:Number) {
			/* Se recibe un dato por parametro y despues se multiplica*/
			var radio:Number=val;
			areaCirculo=3.1416*(radio*radio);
		}
		public function Circulo():String{
			return areaCirculo.toString();
		}
		public function AreaTriangulo (val2:Number) {
			/* Se recibe un dato por parametro y despues se multiplica*/
			var areaT:Number=val2;
			areaTriangulo=(areaT/2);
		}
		public function Triangulo():String{
			return areaTriangulo.toString();
		}

	}
	
}
