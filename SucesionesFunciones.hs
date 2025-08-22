-- Sucesor en enteros
-- Recibe un número y devuelve el siguiente
sucesor :: Int -> Int
sucesor n = n + 1

-- Suma para números reales
addReal :: Float -> Float -> Float
addReal x y = x + y

-- SUMA (a + b)
-- Si b es 0, devuelve a. Sino, aumenta a en 1 (sucesor) y disminuye b en 1, hasta que b sea 0.
suma :: Int -> Int -> Int
suma a 0 = a
suma a b = suma (sucesor a) (b - 1)

-- RESTA (a - b)
-- Si b es 0, devuelve a. Sino, disminuye 1 a y b, hasta que b sea 0.
resta :: Int -> Int -> Int
resta a 0 = a
resta a b = resta (a - 1) (b - 1)

-- MULTIPLICAIÓN (a * b) usando suma
-- Si a o b es 0, devuelve 0. Sino,se suma a con la multiplicación de a por (b - 1).
multiplicar :: Int -> Int -> Int
multiplicar _ 0 = 0
multiplicar a b = suma a (multiplicar a (b - 1))

-- DIVISIÓN (a / b) usando resta
-- Si b es 0, lanza un error y el programa queda interrumpido; si a < b, el resultado es 0. Sino, se resta b de a y se divide.
division :: Int -> Int -> Int
division _ 0 =  error "División por cero no permitida"
division a b
    | a < b     = 0
    | otherwise = sucesor (division (resta a b) b)

-- MAIN
-- Solicita dos números y muestra los resultados de las 4 operaciones
main :: IO ()
main = do
    putStrLn "\nIngrese el primer número: "
    x <- readLn
    putStrLn "Ingrese el segundo número: "
    y <- readLn

    putStrLn "\nOPERACIONES CON NÚMEROS ENTEROS:"
    putStrLn ("La resta de " ++ show x ++ " y " ++ show y ++ " es " ++ show (resta x y))
    putStrLn ("La suma de " ++ show x ++ " y " ++ show y ++ " es " ++ show (suma x y))
    putStrLn ("La multiplicación de " ++ show x ++ " y " ++ show y ++ " es " ++ show (multiplicar x y))
    putStrLn ("La división de " ++ show x ++ " y " ++ show y ++ " es " ++ show (division x y))

-- Ejemplo de uso con números reales:
    putStrLn "\nSUMA CON NÚMEROS REALES:"
    putStrLn "Ingrese el primer número: "
    k <- readLn
    putStrLn "Ingrese el segundo número: "
    z <- readLn

    putStrLn ("La suma de " ++ show k ++ " y " ++ show z ++ " es " ++ show (addReal k z))