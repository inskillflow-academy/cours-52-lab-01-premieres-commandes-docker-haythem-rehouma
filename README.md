# Lab 01 — Premières commandes Docker

> **Cours** : Containerisation avec Docker  
> **Durée estimée** : 45 minutes  
> **Prérequis** : Docker installé sur votre machine (VM Ubuntu recommandée)

---

## Objectif

Dans ce lab, vous allez pratiquer les commandes Docker fondamentales :
- Télécharger des images depuis Docker Hub
- Lancer, lister, arrêter et supprimer des conteneurs
- Travailler en mode interactif et en mode détaché
- Documenter vos résultats dans un fichier de réponses

---

## Instructions

### Partie 1 — Hello World (10 points)

1. Lancez le conteneur `hello-world`
2. Copiez la sortie complète de la commande dans `reponses.md` (section Partie 1)

### Partie 2 — Gestion d'images (15 points)

1. Téléchargez l'image `nginx` en version `latest`
2. Téléchargez l'image `nginx` en version `1.25`
3. Listez toutes les images présentes sur votre machine
4. Copiez la sortie de `docker images` dans `reponses.md` (section Partie 2)

### Partie 3 — Lancer et gérer des conteneurs (25 points)

1. Lancez un conteneur Nginx en mode détaché avec le nom `web-lab01`
2. Vérifiez qu'il tourne avec `docker ps`
3. Arrêtez le conteneur `web-lab01`
4. Vérifiez qu'il est bien arrêté avec `docker ps -a`
5. Supprimez le conteneur `web-lab01`
6. Copiez chaque sortie dans `reponses.md` (section Partie 3)

### Partie 4 — Mode interactif (20 points)

1. Lancez un conteneur Ubuntu en mode interactif : `docker run -it ubuntu bash`
2. À l'intérieur du conteneur, exécutez les commandes suivantes :
   - `cat /etc/os-release`
   - `hostname`
   - `whoami`
3. Quittez le conteneur avec `exit`
4. Copiez les sorties dans `reponses.md` (section Partie 4)

### Partie 5 — Nettoyage (15 points)

1. Listez tous les conteneurs (actifs et arrêtés) avec `docker ps -a`
2. Supprimez tous les conteneurs arrêtés avec `docker container prune`
3. Listez les images avec `docker images`
4. Copiez les sorties dans `reponses.md` (section Partie 5)

### Partie 6 — Questions de réflexion (15 points)

Répondez aux questions dans `reponses.md` (section Partie 6) :

1. Quelle est la différence entre `docker run` et `docker pull` ?
2. Que se passe-t-il si on lance `docker run nginx` sans l'option `-d` ?
3. Quelle est la différence entre `docker stop` et `docker rm -f` ?
4. Pourquoi est-il recommandé d'utiliser un tag spécifique (ex: `nginx:1.25`) plutôt que `latest` en production ?
5. Que fait l'option `--rm` dans `docker run --rm hello-world` ?

---

## Fichier à compléter

Vous devez compléter le fichier **`reponses.md`** avec vos résultats et réponses.

> **Ne modifiez pas** les titres de sections dans `reponses.md`, ils sont utilisés pour la correction automatique.

---

## Critères d'évaluation

| Critère | Points |
|---|---|
| Partie 1 — Hello World | 10 |
| Partie 2 — Gestion d'images | 15 |
| Partie 3 — Lancer et gérer des conteneurs | 25 |
| Partie 4 — Mode interactif | 20 |
| Partie 5 — Nettoyage | 15 |
| Partie 6 — Questions de réflexion | 15 |
| **Total** | **100** |

---

## Soumission

1. Complétez le fichier `reponses.md`
2. Faites un commit et push :
   ```bash
   git add reponses.md
   git commit -m "Lab 01 terminé"
   git push
   ```
3. Vérifiez que les tests passent dans l'onglet **Actions** de votre dépôt GitHub

---

## Ressources

- [Documentation Docker officielle](https://docs.docker.com/)
- [Docker Hub](https://hub.docker.com/)
- Chapitre 01 — Découvrir Docker (cours Thinkific)
- Chapitre 02 — Commandes essentielles (cours Thinkific)
