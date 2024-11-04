#include <stdio.h>
#include <stdlib.h>
#include "headers/datos.h"
#include "headers/calculos.h"
void mostrar_menu_figuras(){
    printf("Calculadora Linux\nEscoge que figura quieres calcular:\n");
    printf("1. Triángulo\n2. Paralelogramo\n3. Cuadrado\n4. Rectángulo\n5. Rombo\n6. Trapecio\n7. Círculo\n8. Polígono Regular");
}
int pedir_opcion(){
    int valorIngresado=0;
    printf("\nIngrese su opción: ");
    scanf("%d", &valorIngresado);
    return valorIngresado;
}
void repito(){
    printf("Pon algo coherente");
}
void triangulo(){
    float l1,l2,l3,base,altura;
    float area;
    float perimetro;
    printf("\nIngrese longitud del lado 1: ");
    scanf("%d", &l1);
    printf("\nIngrese longitud del lado 2: ");
    scanf("%d", &l2);
    printf("\nIngrese longitud del lado 3: ");
    scanf("%d", &l3);
    printf("\nIngrese Base: ");
    scanf("%d", &base);
    printf("\nIngrese Altura: ");
    scanf("%d", &altura);
    area=area_triangulo(base,altura);
    perimetro=perimetro_triangulo(l1,l2,l3);
    printf("\nÁrea: %.2f",area);
    printf("\nPerimetro: %.2f",perimetro);
}
void paralelogramo(){
    float a,b,base,altura;
    float area;
    float perimetro;
    printf("\nIngrese longitud del lado 1: ");
    scanf("%d", &a);
    printf("\nIngrese longitud del lado 2: ");
    scanf("%d", &b);
    printf("\nIngrese Base: ");
    scanf("%d", &base);
    printf("\nIngrese Altura: ");
    scanf("%d", &altura);
    // área común del paralelogramo, cuadrado y rectangulo
    area=area_cuadrilatero(base,altura);
    // perimetro común del paralelogramo, cuadrado, rectangulo y rombo
    perimetro=perimetro_cuadrilatero(a,b);
    printf("\nÁrea: %.2f",area);
    printf("\nPerimetro: %.2f",perimetro);
}
void cuadrado(){
    float lado;
    float area;
    float perimetro;
    printf("\nIngrese longitud de los lados: ");
    scanf("%d", &lado);
    // área común del paralelogramo, cuadrado y rectangulo
    area=area_cuadrilatero(lado,lado);
    // perimetro común del paralelogramo, cuadrado, rectangulo y rombo
    perimetro=perimetro_cuadrilatero(lado,lado);
    printf("\nÁrea: %.2f",area);
    printf("\nPerimetro: %.2f",perimetro);
}
void rectangulo(){
    float base,altura;
    float area;
    float perimetro;
    printf("\nIngrese Base: ");
    scanf("%d", &base);
    printf("\nIngrese Altura: ");
    scanf("%d", &altura);
    // área común del paralelogramo, cuadrado y rectangulo
    area=area_cuadrilatero(base,altura);
    // perimetro común del paralelogramo, cuadrado, rectangulo y rombo
    perimetro=perimetro_cuadrilatero(base,altura);
    printf("\nÁrea: %.2f",area);
    printf("\nPerimetro: %.2f",perimetro);
}
void rombo(){
    float diagonalM,diagonalm,lado;
    float area;
    float perimetro;
    printf("\nIngrese longitud de los lados: ");
    scanf("%d", &lado);
    printf("\nIngrese Diagonal Mayor: ");
    scanf("%d", &diagonalM);
    printf("\nIngrese Diagonal Menor: ");
    scanf("%d", &diagonalm);
    // Misma formula que el área del triángulo
    area=area_triangulo(diagonalM,diagonalm);
    // perimetro común del paralelogramo, cuadrado, rectangulo y rombo
    perimetro=perimetro_cuadrilatero(lado,lado);
    printf("\nÁrea: %.2f",area);
    printf("\nPerimetro: %.2f",perimetro);
}
void trapecio(){
    float lado1,lado2,basem,baseM,altura;
    float area;
    float perimetro;
    printf("\nIngrese longitud del lado Izquierdo: ");
    scanf("%d", &lado1);
    printf("\nIngrese longitud del lado Derecho: ");
    scanf("%d", &lado2);
    printf("\nIngrese Base Menor: ");
    scanf("%d", &basem);
    printf("\nIngrese Base Mayor: ");
    scanf("%d", &baseM);
    printf("\nIngrese Altura: ");
    scanf("%d", &altura);
    area=area_trapecio(basem,baseM,altura);
    perimetro=perimetro_trapecio(basem,baseM,lado1,lado2);
    printf("\nÁrea: %.2f",area);
    printf("\nPerimetro: %.2f",perimetro);
}
void circulo(){
    float radio;
    float area;
    float perimetro;
    printf("\nIngrese longitud del radio: ");
    scanf("%d", &radio);
    area=area_circulo(radio);
    perimetro=perimetro_circulo(radio);
    printf("\nÁrea: %.2f",area);
    printf("\nPerimetro: %.2f",perimetro);
}
void poligono_regular(){
    float lado,n;
    float area;
    float perimetro;
    printf("\nIngrese longitud de los lados: ");
    scanf("%d", &lado);
    printf("\nIngrese número de lados: ");
    scanf("%d", &n);
    area=area_cuadrilatero(lado,n);
    perimetro=perimetro_cuadrilatero(lado,n);
    printf("\nÁrea: %.2f",area);
    printf("\nPerimetro: %.2f",perimetro);
}
