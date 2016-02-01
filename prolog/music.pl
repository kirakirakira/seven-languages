player_instrument(aaron, guitar).
player_instrument(jill, flute).
player_instrument(jack, drums).
player_instrument(todd, flute).
player_instrument(jason, guitar).

player_genre(aaron, rock).
player_genre(jill, classical).
player_genre(jack, punk).
player_genre(todd, classical).
player_genre(jason, jazz).

band(X, Y) :- \+(X = Y), player_instrument(X, Z), player_instrument(Y, Z), player_genre(X, W), player_genre(Y, W).