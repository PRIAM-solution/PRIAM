# Avant propos

Ce tuto sera principalement orienté pour une installation linux. Bash sera utilisé tout au long mais des équivalents existe sur windows (`mingw-w64` (installé directment grâce à git sous le nom de `git-bash`)) et mac.

# Installation du projet.

Il y a deux façons d'installer le projet, soit manuellement soit par docker. Dans tous les cas il faut d'abord télécharger le projet.

## Télécharger le projet

3 façons possible de le télécharger 
- Soit avec [git](https://git-scm.com/downloads) par HTTPS (pas besoin de configuration)
- Soit avec [git](https://git-scm.com/downloads) par SSH (besoin de configurer git et github)
- Soit par [gh-cli](https://cli.github.com/).

Selon votre version choisissez la version qui vous convient.

<details>
  <summary>Git HTTPS</summary>
  
  Pour pouvoir télécharger le projet et ses sous-modules, vous devez taper cette commande:
  
  ```bash
    git clone --recurse-submodules -j8 https://github.com/PRIAM-solution/PRIAM.git
  ```
  
</details>

<details>
  <summary>Git SSH</summary>
  
  Pour pouvoir télécharger le projet et ses sous-modules, vous devez taper cette commande:
  
  ```bash
    git clone --recurse-submodules -j8 git@github.com:PRIAM-solution/PRIAM.git
  ```
  
</details>

<details>
  <summary>GH-cli</summary>
  
  Pour pouvoir télécharger le projet et ses sous-modules, vous devez taper cette commande:
  
  ```bash
    gh repo clone PRIAM-solution/PRIAM -- --recurse-submodules -j8
  ```
  
</details>

Une fois fait, vous pouvez passer à l'étape suivante.


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

### Configuration de keycloak