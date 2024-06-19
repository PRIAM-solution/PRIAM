# Installation du projet.

Il y a deux façons d'installer le projet, soit manuellement soit par docker. 

## Installation par docker

Vous aurez besoin de :
- [Docker](https://docs.docker.com/desktop/)
- [Docker compose](https://docs.docker.com/compose/install/) (si il n'est pas préinstallé dans votre installation de docker)
- [Docker buildx](https://github.com/docker/buildx?tab=readme-ov-file#installing) (si il n'est pas préinstallé dans votre installation de docker)

> [!IMPORTANT]  
> Ce tuto est réalisé avec ces versions de logiciel : 
> - Docker: `26.1.0, build 9714adc6c7`
> - Docker compose: `2.26.1`
> - Docker buildx: `github.com/docker/buildx 0.14.0 171fcbeb69d67c90ba7f44f41a9e418f6a6ec1da`

> [!WARNING]  
> À noter que selon la version de votre docker les commandes peuvent légèrement changer (ex: `docker compose` -> `docker-compose` pour le mode d'installation standalone de docker compose).

---

Le fichier `docker-compose.yml` est pré-configuré pour une utilisation locale. Il manque principalement la configuration de keycloak. 

Dans un premier temps, créer un fichier `.env` dans le dossier root du projet. 

Cette config est partagée entre le docker de `mysql` et de `keycloak`.

Une configuation locale simple ressemble à ceci : 

```env
MYSQL_ALLOW_EMPTY_PASSWORD=true
KEYCLOAK_ADMIN=admin
KEYCLOAK_ADMIN_PASSWORD=admin
```
> [!TIP]  
> Pour toute configuration avancée, je vous recommande de suivre la documentation de [mysql](https://hub.docker.com/_/mysql) et de [keycloak](https://www.keycloak.org/getting-started/getting-started-docker).



