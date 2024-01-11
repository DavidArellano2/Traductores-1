#include<stdlib.h>
#include<conio.h>
#include<stdio.h>
#include<stdint.h>

int num;
int opc;

void base_to(uint8_t *binary_number, uint8_t k, const char *base_n_string, unsigned int binary_length){
	}void binario() 
	{ 
	   int aux; 
	   if(num==0) 
	      return; 
	
	   aux=num%2; 
	   num=num/2; 
	   binario(); 

	   printf(" %d",aux); 	 
	}
	void octal(){
	    int aux1; 
	   if(num==0) 
	      return; 
	
	   aux1=num%8; 
	   num=num/8; 
	   octal(); 
	
	   printf(" %d",aux1); 
	}
	
	void hex(){
	 printf("\n");
	 printf(" %x ",num);
	}

int main() { 
	do{	
	   printf("\t\t < PRACTICA 1 >\n");
	   printf("\nConvertidor de numeros a distintas opciones:");
	   printf("\n Introduce un numero: "); 
	   scanf("%d",&num);
   
	   printf("\n 1- Binario \n 2- Octal \n 3- Hexadecimal \n 4- Salir \n Ingresa una opcion: ");
	   scanf("%d",&opc);
	   switch (opc)
	   {
	    case 1:
	    	printf("\nEl valor en binario es: \n");
			binario(); 
			printf("\n\n");
			system("pause");
			system("cls");
			break;
	 
	 	case 2: 
	 		printf("\nEl valor en octal es: \n");
			octal();
			printf("\n\n");
			system("pause");
			system("cls");
			break;
	 
		case 3: 
			printf("\nEl valor en hexadecimal es: \n");
			hex();
			printf("\n\n");
			system("pause");
			system("cls");
			break;
	 
	 	case 4:
	 		exit(4);
	 
		default:
			system("cls");
			printf("\n\n\tEsa opcion no esta disponible...\n");   
			system("pause");
			system("cls");
		}  
	} while ( opc = 5 );	   
}
