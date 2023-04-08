import System.Win32 (COORD(xPos))
--LISTAS: una colección ordenada de valores, que deben ser todos del mismo tipo
--Lista Vacia = []  Operador constructor : copia un elemento x a la izquiera con una lista xs a la izquierda, 
--y devuelve una lista de tipo x como primer elemento seguido de xs

--length: toma una lista xs y devuelve su cantidad de elementos. length [1,2,0,5] = 4.

-- !! toma una lista xs y un natural n que indica posición, devuelve el elemento de la lista en la n posicion
-- ej: [1,3,3,6,2,3,4,5]!!4 = 2.

-- take: dado n y una lista xs devuelve la sublista con los primeros n elementos de xs. take 2 [1,2,3,4,5,6] = [1,2].

--drop: dado n y una lista xs devuelve la sublista sin los primeros n elementos de xs. ej : drop 2 [1,2,3,4,5,6] = [3,4,5,6].

-- ++ toma dos listas xs e ys y devuelve la lista con todos los elementos de xs mas los elementos de ys : : [1,2,4] ++ [1,0,7] = [1,2,4,1,0,7]. 

--head : toma una lista xs y devuelve su primer elemento. Ej: head [1,2,3] = 1.

--tail : toma una lista xs y devuelve la sublista sin el primer elemento. Ej: tail [1,2,3] = [2,3].

-- PUNTO 1 -- 
a = length [5, 6, 7]

b = [5, 3, 57] !! 1

c = [0,11,2,5]:[ ]

d = take 2 [5,6,7]

e = drop 2 [5,6,7]

f = head (0:[1,2,3])

g = ([1,2] ++ [3,4]) ++ [(2+3)]

h = take 2 (([[1]] ++ [[2]]) ++ [[3]])

i = take (length ([ ]:[[ ]])) (([[ ]] ++ [[ ]]) ++ [([ ] ++ [ ])])

-- PUNTO 2 --

a2 = (-45):[1,2,3]

b2 = ([1,2] ++ [3,4]) ++ [5]

-- c2 = 0 ++ [[1,2,3]] El primer argumento debe ser una lista

d2 = [ ]:[ ]

-- e2 = ([1] ++ [2]) ++ [[3]] Es distinto [] ++ [] que [[]]

--f2 = [1,5,False ] Deben ser todos del mismo tipo

g2 = head [[5]]

-- h2 = head [ True, False ] ++ [False] Faltan los parentesis en toda la lista


--                          FUNCIONES RECURSIVAS!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

-- PUNTO 3 --

soloPares :: [Int] -> [Int]
soloPares[] = []
soloPares (x:xs) | mod x 2 == 0 = x : soloPares xs
                 | odd x = soloPares xs

mayoresQue10 :: [Int] -> [Int]
mayoresQue10[] = []
mayoresQue10 (x:xs) | x > 10 = x : mayoresQue10 xs
                    | x <= 10 = mayoresQue10 xs

mayoresQue :: Int -> [Int] -> [Int]
mayoresQue n [] = []
mayoresQue n (x:xs) | x > n = x : mayoresQue n xs
                    | x <= n = mayoresQue n xs

-- PUNTO 4 -- FUNCIONES MAP, DADA UNA LISTA DEVUELVE OTRA

sumar1 :: [Int] -> [Int]
sumar1 [] = []
sumar1 (x:xs) = 1 + x : sumar1 xs

duplica :: [Int] -> [Int]
duplica [] = []
duplica (x:xs) = 2 * x : duplica xs

multiplica :: Int -> [Int] -> [Int]
multiplica n [] = []
multiplica n (x:xs) = n * x : multiplica n xs

-- PUNTO 5 -- FUNCIONES FOLD, DADA UNA LISTA DEVUELVE UN RESULTADO

todosMenores10 :: [Int] -> Bool
todosMenores10 [] = True
todosMenores10 (x:xs) | x < 10 = todosMenores10 xs
                      | x >= 10 = False

hay0 :: [Int] -> Bool
hay0 [] = False
hay0 (x:xs) | x /= 0 = hay0 xs
            | x == 0 = True

suma :: [Int] -> Int
suma [] = 0
suma (x:xs) = x + suma xs          

-- PUNTO 6 -- FUNCIONES ZIP, DADAS 2 LISTAS DEVUELVE OTRA CON UN PAR DE ELEMENTOS DE CADA LISTA Ej: [santi, pepe] [batto, messi] = [( santi, batto) , (pepe, messi)]

repartir :: [String] -> [String] -> [(String, (String))]
repartir [] [] = [] 
repartir (x:xs) (y:ys) =  (x,y) : repartir xs ys    
 
-- PUNTO 7 -- FUNCION UNZIP, dada una lista de tuplas devuelve una lista con alguna de las proyecciones de la tupla. Ej: apellidos :: [(String, String, Int)] -> [String], donde apellidos [("Juan","Dominguez",22), ("Maria","Gutierrez",19)] y solo queremos los apellidos
apellidos :: [(String, String, Int)] -> [String]
apellidos [] = [] 
apellidos ((a,b,c):xs) = b : apellidos xs    


