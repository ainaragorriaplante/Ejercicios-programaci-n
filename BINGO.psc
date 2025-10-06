Algoritmo BINGO
	Definir carton Como Entero	
	Definir fila, columna,num Como Entero
	Dimension carton[3,9]
	Para fila<-1 Hasta 3 Con Paso 1 Hacer
		Para columna <-1 Hasta 9 Con Paso 1 Hacer
			Si columna = 1 Entonces
				num = Aleatorio(10,19)
				carton[fila,columna] = num
			FinSi
			Si columna = 2 Entonces
				num = Aleatorio(20,29)
				carton[fila,columna] = num
			FinSi
			Si columna = 3 Entonces
				num = Aleatorio(30,39)
				carton[fila,columna] = num
			FinSi
			Si columna = 4 Entonces
				num = Aleatorio(40,49)
				carton[fila,columna] = num
			FinSi
			Si columna = 5 Entonces
				num = Aleatorio(50,59)
				carton[fila,columna] = num
			FinSi
			Si columna = 6 Entonces
				num = Aleatorio(60,69)
				carton[fila,columna] = num
			FinSi
			Si columna = 7 Entonces
				num = Aleatorio(70,79)
				carton[fila,columna] = num
			FinSi
			Si columna = 8 Entonces
				num = Aleatorio(80,89)
				carton[fila,columna] = num
			FinSi
			Si columna = 9 Entonces
				num = Aleatorio(90,99)
				carton[fila,columna] = num
			FinSi
		FinPara
	FinPara
	Para fila <- 1 Hasta 3 Con Paso 1 Hacer
		Para columna <- 1 Hasta 9 Con Paso 1 Hacer
			Escribir carton[fila,columna], " " Sin Saltar
		FinPara
		Escribir " "
	FinPara
	
FinAlgoritmo
