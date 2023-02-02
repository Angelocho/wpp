FROM debian:11.6-slim
CMD ["./demo"] #Ejecuta un comando tras iniciar la maquina
EXPOSE 5000
WORKDIR /opt/wpp
RUN apt-get update \
    && apt-get install -y --no-install-recommends build-essential \
    && rm -rf /var/lib/apt/lists/*
COPY . .
RUN make
