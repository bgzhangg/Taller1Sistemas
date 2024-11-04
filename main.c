#include "headers/datos.h"
int main(){
    int valorIngresado=0;
    int seguir=1;
    while (seguir){
        mostrar_menu_figuras();
        valorIngresado=pedir_opcion();
        switch (valorIngresado)
        {
        case 1:
            triangulo();
            break;
        case 2:
            paralelogramo();
            break;
        case 3:
            cuadrado();
            break;
        case 4:
            rectangulo();
            break;
        case 5:
            rombo();
            break;
        case 6:
            trapecio();
            break;
        case 7:
            circulo();
            break;
        case 8:
            poligono_regular();
            break;
        case 9:
            cubo();
            break;
        case 10:
            cuboide();
            break;
        case 11:
            cilindro();
            break;
        case 12:
            esfera();
            break;
        case 13:
            cono();
            break;
        case 14:
            //Salir
            seguir=0;
            break;
        default:
            // Verificar que sea una de las opciones
            repito();
            break;
        }
    }
}
