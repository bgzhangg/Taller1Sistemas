#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "headers/sesion.h"
#include <string.h>

char fixeduser[50];

char *ObtenerFecha(){
    char *fecha;
    time_t t = time(NULL);
    struct tm tm = *localtime(&t);
    sprintf(fecha, "%04d/%02d/%02d", tm.tm_year + 1900, tm.tm_mon + 1, tm.tm_mday);
    return fecha;
}

void InicioExitoso(char *user){
    FILE *fp;
    fp = fopen("logs.txt","a");
    fprintf(fp,"\n%s: %s - Ingreso exitoso al sistema!",ObtenerFecha(),user);
    fclose(fp);
}

void InicioFallido(char *user){
    FILE *fp;
    fp = fopen("logs.txt","a");
    fprintf(fp,"\n%s: %s - Ingreso Fallido, Usuario/Clave incorrecto",ObtenerFecha(),user);
    fclose(fp);

}

int ValidarUser(char *user,char *pswd){
    FILE *fp;
    char linea[150];
    user[strcspn(user, "\n")] = 0;
    pswd[strcspn(pswd, "\n")] = 0;
    int fnd = 0;
    char *objt;
    sprintf(objt,"%s-%s",user,pswd);
    printf("Hoaaaaaa");
    fp = fopen("registry.txt","r");
    while(fgets(linea,sizeof(linea),fp) != NULL){
        linea[strcspn(linea,"\n")] = 0;
        if (strcmp(linea,objt) == 0){
            fnd = 1;
            strcpy(fixeduser,user);
            break;
        }
    }
    fclose(fp);
    return fnd;
}

void Salida(){
    FILE *fp;
    fp = fopen("logs.txt","a");
    fprintf(fp,"\n%s: %s Salida del Sistema",ObtenerFecha(),fixeduser);
    fclose(fp);
    exit(0);
    
}

void RegistrarUso(char *fig){
    FILE *fp;
    fp = fopen("logs.txt","a");
    fprintf(fp,"\n%s: %s - %s", ObtenerFecha(),fixeduser,fig);
    fclose(fp);

}