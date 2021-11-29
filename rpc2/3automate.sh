if [ "$#" -ne 2 ]; then
    echo "Illegal number of parameters"
    echo "Example of use: ./automate.sh interface1 interface2"
    exit
fi

#Step 3
# Hacer los archivos make

# Generar make del servidor1
cd ./servidor1
rpcgen -Sm $1.x > makeSC

# Generar make del servidor2
cd ../servidor2
rpcgen -Sm $2.x > makeS

# Generar make del cliente
cd ../cliente
rpcgen -Sm $1.x > makeC

cd ../

echo "No olvides editar los archivos makefile de todos"
