# Step 4

# change makeC
# CLIENT = client 
# SOURCES_CLNT.c = client.c
# SOURCES_CLNT.h = gestionAnteproyectos.h

# change makeS
#SERVER = server
#SOURCES_SVC.c = server.c
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
