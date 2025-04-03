pria(david).
pria(jack).
pria(john).
pria(ray).
pria(peter).

wanita(amy).
wanita(karen).
wanita(susan).
wanita(liza).
wanita(mary).

menikah(david, amy).
menikah(jack, karen).
menikah(john, susan).

orangtua(david, liza).
orangtua(amy, liza).
orangtua(david, john).
orangtua(amy, john).

orangtua(jack, ray).
orangtua(karen, ray).

orangtua(john, peter).
orangtua(susan, peter).
orangtua(john, mary).
orangtua(susan, mary).

% Aturan untuk menentukan apakah X adalah ayah dari Y
ayah(X, Y) :- pria(X), orangtua(X, Y).

% Aturan untuk menentukan apakah X adalah ibu dari Y
ibu(X, Y) :- wanita(X), orangtua(X, Y).

% Aturan untuk menentukan apakah X adalah anak dari Y
anak(X, Y) :- orangtua(Y, X).

% Aturan untuk menentukan apakah X adalah saudara dari Y
saudara(X, Y) :- orangtua(Z, X), orangtua(Z, Y), X \= Y.

% Aturan untuk menentukan apakah X adalah kakek dari Y
kakek(X, Y) :- pria(X), orangtua(X, Z), orangtua(Z, Y).

% Aturan untuk menentukan apakah X adalah nenek dari Y
nenek(X, Y) :- wanita(X), orangtua(X, Z), orangtua(Z, Y).

% Aturan untuk menentukan apakah X adalah cucu dari Y
cucu(X, Y) :- orangtua(Y, Z), orangtua(Z, X).

