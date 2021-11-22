# go to client/
cd cliente/

# Generate cliente template
rpcgen -Sc $1.x > cliente.c

# go back and go to servidor/
cd ../servidor

# Generate servidor template
rpcgen -Ss $1.x > servidor.c

# go back
cd ../
