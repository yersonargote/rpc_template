# change makeC
# CLIENT = cliente
# SOURCES_CLNT.c = cliente.c
# SOURCES_CLNT.h = gestionAnteproyectos.h

# change makeS
#SERVER = servidor
#SOURCES_SVC.c = servidor.c
#SOURCES_SVC.h = gestionAnteproyectos.h

# go to client/
cd cliente/

# compile client/
make -f makeC

# go back and go to server/
cd ../servidor/

# compile server/
make -f makeS

# go back
cd ../
