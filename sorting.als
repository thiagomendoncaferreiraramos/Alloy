sig Elem{
	lessThan: set Elem
}


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
