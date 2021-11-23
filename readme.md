## RPC in c and linux

**Template hecho para facilitar la elaboración de la práctica de RPC.**

### Privilegios de ejecución.

```
chmod u+x automate.sh
```

`./automate.sh <nombre archivo>` Nombre archivo ***.x*** **sin la extension**.

## Compilar cliente y servidor.

Una vez cambiados los make del cliente y el servidor se hace.

```
chmod u+x step.sh
```

### Ejecutar step

```
./step.sh
```

## Comandos a tener en cuenta para RPC.

### Instalar RPC bind

```
apt install rpcbind
```

### Activar portmap
```
sudo rpcbind -wi
```

### Detener portmap

```
sudo service portmap stop
```
