rev :: [a] -> [a]
rev [] = []
rev (x:xs) = (rev xs) ++ [x]

len :: [a] -> Integer
len [] = 0
len (x:xs) = 1 + (len xs)

pair_sum [] = (0, 0)
pair_sum (x:xs) = (fst x + fst p, snd x + snd p)
    where
        p = pair_sum xs

includes elt [] = False
includes elt (x:xs)
    | x == elt = True
    | otherwise = includes elt xs

lst_perm_i _ [] = []
lst_perm_i i (x:xs) = [(i, x)] ++ (lst_perm_i (i + 1) xs)

lst_perm [] = []
lst_perm (xs) = lst_perm_i 1 xs

perm_rem [] = []
perm_rem (x:xs) = [snd x] ++ perm_rem xs

sz _ [] = 0
sz i (x:xs)
    | i == fst x = snd x
    | otherwise = sz i xs

zloz _ [] = []
zloz [] _ = []
zloz x (y:ys) = [ (fst y, (sz (snd y) x)) ] ++ ( zloz x ys )

is_identity [] = True
is_identity (x:xs) = (fst x == snd x) && (is_identity xs)

ile_zlozen' [] _ = 0
ile_zlozen' x i
    | (z == x) || (is_identity x) = i
    | otherwise = ile_zlozen' z (i + 1)
    where z = zloz x x

ile_zlozen [] = 0
ile_zlozen x = ile_zlozen' x 1