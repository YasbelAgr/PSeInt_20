Algoritmo sin_titulo
	Algoritmo MergeSort
		Definir arreglo, n, i Como Entero
		
		Escribir "Ingrese la cantidad de elementos a ordenar: "
		Leer n
		
		Dimension arreglo(n)
		
		// Leer los elementos del arreglo
		Para i <- 1 Hasta n Hacer
			Escribir "Ingrese el elemento ", i, ": "
			Leer arreglo(i)
		FinPara
		
		// Llamar a la función de ordenamiento por mezcla
		MergesortRecursivo(arreglo, 1, n)
		
		// Mostrar el arreglo ordenado
		Escribir "Arreglo ordenado: "
		Para i <- 1 Hasta n Hacer
			Escribir arreglo(i), " "
		FinPara
FinAlgoritmo

Funcion MergesortRecursivo(arreglo, izq, der)
	Definir medio Como Entero
	
	Si izq < der Entonces
		medio <- (izq + der) DIV 2
		MergesortRecursivo(arreglo, izq, medio)
		MergesortRecursivo(arreglo, medio + 1, der)
		Mezclar(arreglo, izq, medio, der)
	FinSi
FinFuncion

Funcion Mezclar(arreglo, izq, medio, der)
	Definir i, j, k, aux(der - izq + 1) Como Entero
	
	i <- izq
	j <- medio + 1
	k <- 1
	
	Mientras i <= medio Y j <= der Hacer
		Si arreglo(i) <= arreglo(j) Entonces
			aux(k) <- arreglo(i)
			i <- i + 1
		Sino
			aux(k) <- arreglo(j)
			j <- j + 1
		FinSi
		k <- k + 1
	FinMientras
	
	Mientras i <= medio Hacer
		aux(k) <- arreglo(i)
		i <- i + 1
		k <- k + 1
	FinMientras
	
	Mientras j <= der Hacer
		aux(k) <- arreglo(j)
		j <- j + 1
		k <- k + 1
	FinMientras
	
	Para i <- izq Hasta der Hacer
		arreglo(i) <- aux(i - izq + 1)
	FinPara
FinFuncion
FinAlgoritmo
