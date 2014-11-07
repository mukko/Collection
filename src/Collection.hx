package ;

class Collection
{
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
