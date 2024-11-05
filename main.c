#include "headers/datos.h"
#include "headers/sesion.h"
int main(){


    int valorIngresado=0;
    int seguir=1;
    InicioSesion();
    while (seguir){
        mostrar_menu_figuras();
        valorIngresado=pedir_opcion();
        switch (valorIngresado)
        {
        case 1:
            RegistrarUso("Triangulo");
            triangulo();
            break;
        case 2:
            RegistrarUso("Paralelogramo");
            paralelogramo();
            break;
        case 3:
            RegistrarUso("Cuadrado");
            cuadrado();
            break;
        case 4:
            RegistrarUso("Rectangulo");
            rectangulo();
            break;
        case 5:
            RegistrarUso("Rombo");
            rombo();
            break;
        case 6:
            RegistrarUso("Trapecio");
            trapecio();
            break;
        case 7:
            RegistrarUso("Circulo");
            circulo();
            break;
        case 8:
            RegistrarUso("Poligono Regular");
            poligono_regular();
            break;
        case 9:
            RegistrarUso("Cubo");
            cubo();
            break;
        case 10:
            RegistrarUso("Cuboide");
            cuboide();
            break;
        case 11:
            RegistrarUso("Cilindro");
            cilindro();
            break;
        case 12:
            RegistrarUso("Esfera");
            esfera();
            break;
        case 13:
            RegistrarUso("Cono");
            cono();
            break;
        case 14:
            //Salir
            seguir=0;
            Salida();
            exit(0);
            break;
        default:
            // Verificar que sea una de las opciones
            repito();
            break;
        }
    }
}
