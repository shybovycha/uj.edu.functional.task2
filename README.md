# Programowanie Funkcyjne. Zajęcie #2

## Zadania

Napisać następne funkcje:

* `rev` - zwraca odwrotnione liste
* `len` - obliczy długość listy
* `pair_sum` - obliczy sumy listy par: `pair_sum [(1, 2), (3, 4)] = (4, 6)`
* `lst_perm n` - dla danego `n` zwraca liste par (identyczna permutacja): `n = 4 => [(1, 1), (2, 2), (3, 3), (4, 4)]`
* `perm_rem l` - dla danej permutacji zwraca liste jej elementów: `[(1,1), (2,7), (3,4)] => [1, 7, 4]`
* `zloz a b` - sklada dwie permutacji
* `ile_zlozen` - obliczy ile raz potrzebne sklaść permutacje ze sobą żeby ona stała identyczną
* `to_cycle` - zwraca wszystkie elementy permutacji, które formują cykly: `[(1, 3), (2, 4), (3, 1), (4, 2)] =>[(1, 3), (2, 4)]`