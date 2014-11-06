package ;
using Collection;

class Main
{
public static function main(){
	
	var array1 = [10,20,30,40,50];
	var array2 = ["abc","def","ghi","jkl","mno"];
	var result = Collection.zip(array1,array2);
	trace(result);
	trace(array2);
	
	var flatten = [[1,2],[3,4]];
	var flaResult = Collection.flatten(flatten);
	trace(flaResult);
	
	var distinct = [10,20,30,40,50,10,60];
	var disResult = Collection.distinct(distinct);
	trace(disResult);
}
}
