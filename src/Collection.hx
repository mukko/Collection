package ;

class Collection
{
/**
*distinct
* @param	it	distinctしたい配列
* @return	distincted
* [1, 2, 3, 4, 4]という配列なら、[1, 2, 3, 4]というように、同じ値を重複しない配列を返す
**/
	public static function distinct<Dynamic>(it:Array<Dynamic>):Array<Dynamic>
	{
		var distincted = new Array<Dynamic>();
		for (x in it)
		{
			var judge = true;
			for (a in distincted)
			{
				if (x == a) judge = false;
			}
			if (judge) distincted.push(x);
		}
		return distincted;
	}
/**
*flatten
* @param	it	flattenしたい配列
* @return	flattened
* [[1, 2], [3, 4], [5, 6]]ならば[1 ,2 ,3 ,4 ,5 ,6]
* [[1, 2], [[3, 4], [5, 6]]]ならば[1, 2, [3, 4], [5, 6]]
* を返すように、1レベルflattenした配列を返す
**/
	public static function flatten<Dynamic>(it:Array<Dynamic>):Array<Dynamic>
	{
		var flattened = new Array<Dynamic>();

		for (a in it)
		{
			if (Std.is(a, Array))
			{
				var innerArray:Array<Dynamic> = cast(a);
				for (i in 0...innerArray.length)
				{
					flattened.push(innerArray[i]);
				}
			} else flattened.push(a);
		}
		return flattened;
	}
/**
*zip
* @param	a	対象の配列その1
* @param	b	対象の配列その2
* @return	zipped
* zipは引数のa,bの配列の直積を返す
* a = [1, 2, 3]
* b = [4, 5, 6]のときは
* zipped = [[1, 4],[2, 5],[3, 6]]を返す
* a,bの配列長が違う場合、短い方を基準とする
**/
	public static function zip<A, B>(a:Array<Dynamic>, b:Array<Dynamic>):Array<Dynamic>
	{
		var zipped = new Array<Dynamic>();
		var array:Array<Dynamic> = [];
		for (i in 0...a.length)
		{
			if (b.length <= i) break;
			array = [a[i], b[i]];
			zipped.push(array);
		}
		return zipped;
	}

}
