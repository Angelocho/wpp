FROM debian:11.6
WORKDIR /opt/wpp #Si no existe la carpeta, la crea y además nos situamos dentro de ella
COPY . .
RUN apt-get update \
    && apt-get install -y --no-install-recommends build-essential \
    && rm -rf /var/lib/apt/lists/*
RUN make
CMD ["./demo"] #Ejecuta un comando tras iniciar la maquina
