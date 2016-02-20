smaller(X, Y, What) :- (X =< Y), What is X.
smaller(X, Y, What) :- (X > Y), What is Y.

smallest([Head|[]],Head).
smallest([Head|Tail], Answer) :- 
    smallest([Tail, What]), 
    smaller(What, Head, Answer).