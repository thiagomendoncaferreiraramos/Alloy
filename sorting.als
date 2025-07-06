sig Elem{
	lessThan: set Elem
}

one sig Sorter{
	toBeSorted : (seq Elem),
	sorted : (seq Elem)
}{
	toBeSorted.elems = Elem
	#toBeSorted.inds = #Elem
	sorted.elems = Elem
}

fact Sorting{
	all i : Sorter.sorted.butlast.inds | 
		Sorter.sorted[i]->Sorter.sorted[i.add[1]] in
		lessThan
}

check{Sorter.toBeSorted.elems = Sorter.sorted.elems}


fact Injective{
	~lessThan.lessThan in iden
}

fact Asymmetric{
	no ^lessThan & ~(^lessThan)
}

fact Acyclic{
	(Elem->Elem-iden in ^lessThan + ~(^lessThan))
}

run {} for 7
