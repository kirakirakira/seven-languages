revappend([], Ys, Ys).
revappend([X|Xs], Ys, Zs) :- revappend(Xs, [X|Ys], Zs).
reverse(Xs,Ys) :- revappend(Xs,[],Ys).


revappend([1,2,3,4], [], What).
revappend([1,2,3|4], What, Zs) = revappend([4], [1,2,3|What], Zs).