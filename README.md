# Funciones con Sucesiones en Haskell


# Operaciones Básicas en Haskell

Este proyecto implementa las operaciones básicas de *suma, resta, multiplicación y división*, utilizando únicamente el concepto de sucesor (+1).


## Funciones implementadas

- Retorna el siguiente número entero.
  ```
  sucesor :: Int -> Int  
  ```

- Implementa la resta mediante recursión.
  ```
  resta :: Int -> Int -> Int
  ```
- Implementa la suma utilizando la función sucesor.
  ```
  suma :: Int -> Int -> Int
  ```
  
-  Implementa la multiplicación como sumas sucesivas.
    ```
    multiplicar :: Int -> Int -> Int
    ```

- Implementa la división entera como restas sucesivas.
  ```
  division :: Int -> Int -> Int
  ```
 
## Ejecución

Para compilar y ejecutar en PowerShell:

```bash
ghc <nombreArchivo>.hs -o <nombreArchivo>
.\<nombreArchivo>
```


## Ejemplos

### 1. Ejemplo 1:
   - Se ingresaron dos enteros (10 y 5), se realizaron las 4 operaciones de manera correcta.
   - Se ingresaron dos números reales (3,7 y 8,5), se calculó la suma de estos.
   <img width="300" height="260" alt="Captura de pantalla 2025-08-22 004045" src="https://github.com/user-attachments/assets/d6bb8ed6-9289-46b1-b20b-b883a981c52a" />
   
### 2. Ejemplo 2:
   - Se ingresaron dos enteros (3 y 9), se realizaron las 4 operaciones de manera correcta, nótese que en la divisón, dado que el primer valor (3), es menor al segundo (9), su resultado fue 0.
   - Se ingresaron dos números reales (6,6 y 0,4), se calculó la suma de estos.
   <img width="300" height="260" alt="Captura de pantalla 2025-08-22 004149" src="https://github.com/user-attachments/assets/681f3e0f-405e-4171-b593-6061045c0b35" />
   
### 3. Ejemplo 3:
   - Se ingresaron dos enteros (7 y 0), se realizaron las primeras 3 operaciones sin problema, sin embargo al momento de realizar la división, el programa se vio interrumpido y se generó un error dado que se divide 7 entre 0, lo que es matemáticamente imposible.
   - Ya que se interrumió la ejecución, no se pudo completar la suma de números reales.
   <img width="500" height="400" alt="Captura de pantalla 2025-08-22 004303" src="https://github.com/user-attachments/assets/da43a1eb-6f07-483f-97f6-18ac5b231be0" />

