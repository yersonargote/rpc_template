# Step1
mkdir cliente && mkdir servidor

# RPC
rpcgen $1.x

# Copy in client and servidor
cp $1.h servidor/ && cp $1.x servidor/ && cp $1_xdr.c servidor/
cp $1.h cliente/ && cp $1.x cliente/ && cp $1_xdr.c cliente/

# Delete copy files
rm $1.h $1.x $1_xdr.c

# Move rest files to cliente and servidor
 mv $1_clnt.c cliente/ && mv $1_svc.c servidor/

# Step 2
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

# Step 3
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
