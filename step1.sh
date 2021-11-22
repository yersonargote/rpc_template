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
