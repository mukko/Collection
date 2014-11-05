package ;

class Collection
{
	public function new(){
	}

	public static function distinct<T>(it : Iterable<T>):List<T>{
		var l = new List();
		
		return l;
	}
	
	public static function flatten<T>(it : Iterable<T>):List<T>{
		var l = new List();
		
		return l;
	}
	
	public static function zip<A,B>(a : Array<A>, b : Array<B>):Array<Dynamic>{
		var zipped = new Array<Dynamic>();
		var array:Array<Dynamic> = [];
		for(i in a){
		
			for(j in b){
				array = [i,j];
			}
			zipped.push(array);
		}
		return zipped;
	}

}
