# Privatni repo sa nmap pripremom

## Instalacija (Zahtijeva instaliran docker compose koji je obicno dio Docker desktop instalacije)

```
docker-compose up
```

ili 

```
docker compose up
```

Prvi put komanda zahtijeva vremena, posto priprema Kali Linux distribuciju. Poslije prvog uspijesnog starta, sledeci pozivi su brzi posto je neophodni Docker image vec na lokalnoj masini.


Pogledati trenutne kontejnere koji su aktivni:

```
docker ps
```

Pristupiti kontejneru:

```
docker container exec -it <ime_kontejnera> /bin/bash
```

