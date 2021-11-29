if [ "$#" -ne 2 ]; then
    echo "$#"
    echo "Illegal number of parameters"
    echo "Example of use: ./automate.sh interface1 interface2"
    exit
fi

# Step 1
# Crear carpetas
mkdir cliente && mkdir servidor1 && mkdir servidor2

# Generar .h _clnt.c _svc.c desde interface1.x
rpcgen ./$1.x
# Generar .h _clnt.c _svc.c desde interface2.x
rpcgen ./$2.x

# Copiar .h .c .x _clnt.c en cliente
cp ./$1.x ./cliente && cp ./$1.h ./cliente && cp ./$1_clnt.c ./cliente
# Copiar .h .c .x _svc.c en servidor1
cp ./$1.x ./servidor1 && cp ./$1.h ./servidor1 && cp ./$1_svc.c ./servidor1

# Copiar .h .c .x en servidor1
cp ./$2.x ./servidor1 && cp ./$2.h ./servidor1 && cp ./$2_clnt.c ./servidor1
# Copiar .h .c .x en servidor2
cp ./$2.x ./servidor2 && cp ./$2.h ./servidor2 && cp ./$2_svc.c ./servidor2

# Eliminar archivos generados
rm -r ./$1*
rm -r ./$2*

# Step 2
# Generar plantilla del cliente
cd cliente
rpcgen -Sc $1.x > cliente.c

# Generar plantilla del servidor1
cd ../servidor1
rpcgen -Ss $1.x > servidor1.c

# Generar plantilla del cliente del servidor2
rpcgen -Sc $2.x > cliente2.c
echo "No te olvides de hacer los pasos d, e y f del punto 5 de la guia"

