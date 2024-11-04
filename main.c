#include "headers/datos.h"
int main(){
    mostrar_menu_figuras();
    int valorIngresado=pedir_opcion();
    int bandera=1;
    mostrar_menu_figuras();
    // Verificar que sea una de las opciones
    float valor=0.0;
    while (bandera){
        switch (valorIngresado)
        {
        case 1:
            triangulo();
            bandera=0;
            break;
        case 2:
            paralelogramo();
            bandera=0;
            break;
        case 3:
            cuadrado();
            bandera=0;
            break;
        case 4:
            rectangulo();
            bandera=0;
            break;
        case 5:
            rombo();
            bandera=0;
            break;
        case 6:
            trapecio();
            bandera=0;
            break;
        case 7:
            circulo();
            bandera=0;
            break;
        case 8:
            poligono_regular();
            bandera=0;
            break;
        default:
            repito();
            valorIngresado=pedir_opcion();
            break;
        }
    }
}
