# Vamos a la carpeta de cliente
cd ./cliente

# Limpando arquivos en la carpeta cliente
make -f makeC clean

# Vamos a la carpeta de servidor1
cd ../servidor1

# Limpando arquivos en la carpeta servidor1
make -f makeSC clean

# Vamos a la carpeta de servidor2
cd ../servidor2

make -f makeS clean