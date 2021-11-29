if [ "$#" -ne 1 ]; then
    echo "Illegal number of parameters"
    echo "Example of use: ./automate.sh interface2"
    exit
fi

cd ./servidor1

# Eliminar cliente2
rm -r cliente2.c

cd ../servidor2

# Generar plantilla del servidor2
rpcgen -Ss $1.x > servidor2.c

cd ../
echo "Hacer el paso b del punto 6 de la guia"

