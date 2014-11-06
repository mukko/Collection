package ;

class Collection
{
	public static function distinct<T>(it : Array<Dynamic>):Array<Dynamic>{
		var distincted = new Array<Dynamic>();
		for(x in it){
			var judge = true;
			for(a in distincted){
				if(x == a) judge = false;
			}
			if(judge)	distincted.push(x);
		}
		return distincted;
	}
	
	public static function flatten<A>(it : Array<Dynamic>):Array<Dynamic>{
		var l = new Array<Dynamic>();
		
		for(a in it){
			//if(Std.is(a,Array)){
				//for(item in a){
					//l.push(item);
			//	}
			//}
			/*else*/ l.push(a);
		}
		return l;
	}
	
	public static function zip<A,B>(a : Array<Dynamic>, b : Array<Dynamic>):Array<Dynamic>{
		var zipped = new Array<Dynamic>();
		var array:Array<Dynamic> = [];
		for(i in 0...a.length){
			array = [a[i],b[i]];
			zipped.push(array);
		}
		return zipped;
	}

}
