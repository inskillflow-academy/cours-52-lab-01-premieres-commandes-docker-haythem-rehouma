# Lab 01 — Mes réponses

> **Nom** : _votre nom ici_  
> **Date** : _date de soumission_

---

## Partie 1 — Hello World

```
# Collez ici la sortie de : docker run hello-world


```

---

## Partie 2 — Gestion d'images

### Sortie de `docker pull nginx`
```
# Collez ici la sortie


```

### Sortie de `docker pull nginx:1.25`
```
# Collez ici la sortie


```

### Sortie de `docker images`
```
# Collez ici la sortie


```

---

## Partie 3 — Lancer et gérer des conteneurs

### Sortie de `docker run -d --name web-lab01 nginx`
```
# Collez ici la sortie


```

### Sortie de `docker ps`
```
# Collez ici la sortie


```

### Sortie de `docker stop web-lab01`
```
# Collez ici la sortie


```

### Sortie de `docker ps -a` (après le stop)
```
# Collez ici la sortie


```

### Sortie de `docker rm web-lab01`
```
# Collez ici la sortie


```

---

## Partie 4 — Mode interactif

### Sortie de `cat /etc/os-release`
```
# Collez ici la sortie


```

### Sortie de `hostname`
```
# Collez ici la sortie


```

### Sortie de `whoami`
```
# Collez ici la sortie


```

---

## Partie 5 — Nettoyage

### Sortie de `docker ps -a` (avant nettoyage)
```
# Collez ici la sortie


```

### Sortie de `docker container prune`
```
# Collez ici la sortie


```

### Sortie de `docker images` (après nettoyage)
```
# Collez ici la sortie


```

---

## Partie 6 — Questions de réflexion

### 1. Quelle est la différence entre `docker run` et `docker pull` ?

_Votre réponse ici_

### 2. Que se passe-t-il si on lance `docker run nginx` sans l'option `-d` ?

_Votre réponse ici_

### 3. Quelle est la différence entre `docker stop` et `docker rm -f` ?

_Votre réponse ici_

### 4. Pourquoi utiliser un tag spécifique plutôt que `latest` en production ?

_Votre réponse ici_

### 5. Que fait l'option `--rm` dans `docker run --rm hello-world` ?

_Votre réponse ici_
