object quicksort
	{
	//Functional style
	
	/*def sort(a:List[Int]):List[Int]={
		if(a.length<2)
		a
		else
			{
			var pivot = a(a.length/2)
			sort(a.filter(_ < pivot)):::a.filter(_ == pivot):::sort(a.filter(_ > pivot))
			}
		}*/
	
	//Imperative Style
	def sort(a:Array[Int])
		{
		def swap(i:Int, j:Int)
			{
			var temp = a(i)
			a(i) = a(j)
			a(j) = temp
			}
		def sort1(l:Int, r:Int)
			{
			var pivot = a((l+r)/2)
			var i = l
			var j = r
			while(i<=j)
				{
				while(a(i)<pivot) i+=1
				while(a(j)>pivot)  j-=1
				if(i<=j)
					{
					swap(i,j)
					i+=1
					j-=1
					}
				}
			if(l<j) sort1(l,j)
			if(j<r) sort1(i,r)
			}
		if(a.length>0)
			sort1(0,a.length-1)
		}
	
	def println(ar:Array[Int]){
		def print1 = {
			def iter(i:Int): String = ar(i) + (if(i<ar.length-1) "," + iter(i+1) else " ")
			if(ar.length == 0) " " else iter(0)
			}
		Console.println("[" + print1 + "]")
		}
	def main(args:Array[String])
		{
		var arr = Array(3,5,8,2,9,3)
		Console.println("Before sorting")
		arr.foreach(Console.println)
		sort(arr)
		Console.println("After sorting")
		println(arr)
		/*var arr = List(3,5,8,2,9,3)
		println("Before sorting")
		println(arr)
		println("After sorting")
		println(sort(arr))
		*/
		}
	}
