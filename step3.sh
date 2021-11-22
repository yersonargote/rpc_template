# go to cliente/
cd cliente/

# Generate makefile for cliente compile 
rpcgen -Sm $1.x > makeC

# go back and go to servidor/
cd ../servidor/

# Generate makefile for servidor compile 
rpcgen -Sm $1.x > makeS

# go back
cd ../
