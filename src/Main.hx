package ;
using Collection;

class Main
{
public static function main(){
	//var Collection = new Collection();
	var array1 = [10,20,30,40,50];
	var array2 = ["abc","def","ghi","jkl","mno"];
	var result = Collection.zip(array1,array2);
	trace(result);
	trace(array2);
}
}
