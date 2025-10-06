Algoritmo sin_titulo
	//hacer un tablero 10 x10 y rellenarlo con asteriscos
	//definir varibles
	Definir tablero_Simpson Como Caracter;
	Dimension tablero_Simpson[10,10]
	//flujo de instrucciones
	//2.1. Rellenar tablero_Simpson
	Para fila <- 1 Hasta  10	Con Paso 1 Hacer
		Para columna <-1 Hasta 10 Con Paso 1 Hacer
			tablero_Simpson[fila,columna]<- '*';
		FinPara
	FinPara
	//Añadir 10 muros
	Definir MURO Como Caracter
	MURO<-'M';
	Definir fila_ale Como Entero
	Definir columna_ale Como Entero
	Definir contMuros Como Entero
	Para contMuros <-1 Hasta 10 Con Paso 1 Hacer
		Repetir
			fila_ale <- Aleatorio(1,10)
			columna_ale <- Aleatorio(1,10)
		Hasta Que (tablero_Simpson[fila_ale,columna_ale] == '*')
		tablero_Simpson[fila_ale,columna_ale]<- 'M';
	FinPara
	
	//Añadir pócimas
	Definir POCIMA Como Caracter
	POCIMA<-'P';
	Definir contPocimas Como Entero
	Para contPocimas <-1 Hasta 10 Con Paso 1 Hacer
		Repetir
			fila_ale <- Aleatorio(1,10)
			columna_ale <- Aleatorio(1,10)
		Hasta Que (tablero_Simpson[fila_ale,columna_ale] == '*')
		tablero_Simpson[fila_ale,columna_ale]<- 'P';
	FinPara
	
	//Contador personaje y //crear bart con moviemiento
	Definir SIMPSON Como Caracter
	Definir pos_fila_bart Como Entero
	Definir pos_columna_bart Como Entero
	
	SIMPSON<-'B';
	Para contSimpson <-1 Hasta 1 Con Paso 1 Hacer
		Repetir
			fila_ale <- Aleatorio(1,10)
			columna_ale <- Aleatorio(1,10)
		Hasta Que (tablero_Simpson[fila_ale,columna_ale] == '*')
		tablero_Simpson[fila_ale,columna_ale]<- 'B';
		//guardar coordenadas bart SIMPSON
		pos_fila_bart<-fila_ale
		pos_columna_bart<-columna_ale
		//fin guardar coordenadas de bart SIMPSON
	FinPara
	
	//Mostrar la matriz
	Definir cont_fila Como Entero
	Definir cont_columna Como Entero
	
	Para cont_fila<-1 Hasta 10 Con Paso 1 Hacer
		Para cont_columna <- 1 Hasta 10 Con Paso 1 Hacer
			Escribir tablero_Simpson[cont_fila,cont_columna], " " Sin Saltar
		FinPara
		Escribir " "
	FinPara
	
	//empezar el juego
	Definir desplazamiento Como Caracter
	Repetir
		Escribir "Desplazar a Bart con las teclas w,a,s,d"
		Leer desplazamiento
		//tecla "d"
		Si (desplazamiento == "d") Entonces
			pos_fila_bart <- pos_fila_bart 
			pos_columna_bart<- pos_columna_bart +1
			tablero_Simpson[pos_fila_bart,pos_columna_bart] = SIMPSON
		FinSi
		//tecla "a"
		Si (desplazamiento == "a") Entonces
			pos_fila_bart <- pos_fila_bart 
			pos_columna_bart<- pos_columna_bart -1
			tablero_Simpson[pos_fila_bart,pos_columna_bart] = SIMPSON
		FinSi
		//tecla "s"
		Si (desplazamiento == "s") Entonces
			pos_fila_bart <- pos_fila_bart +1
			pos_columna_bart<- pos_columna_bart 
			tablero_Simpson[pos_fila_bart,pos_columna_bart] = SIMPSON
		FinSi
		//tecla "w"
		Si (desplazamiento == "w") Entonces
			pos_fila_bart <- pos_fila_bart -1
			pos_columna_bart<- pos_columna_bart
			tablero_Simpson[pos_fila_bart,pos_columna_bart] = SIMPSON
		FinSi
		//mostrar el bart actualizado
		tablero_Simpson[pos_fila_bart,pos_columna_bart]<- "B"
		Para cont_fila<-1 Hasta 10 Con Paso 1 Hacer
			Para cont_columna <- 1 Hasta 10 Con Paso 1 Hacer
				Escribir tablero_Simpson[cont_fila,cont_columna], " " Sin Saltar
			FinPara
			Escribir " "
		FinPara
	Hasta Que (desplazamiento <> "a") y (desplazamiento <> "w") y (desplazamiento <> "s") y (desplazamiento <> "d") y ((pos_fila_bart==10) y (pos_columna_bart ==10))
	//fin juego
FinAlgoritmo
