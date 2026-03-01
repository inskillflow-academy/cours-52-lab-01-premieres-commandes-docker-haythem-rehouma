#!/bin/bash
#
# Script de validation automatique pour le Lab 01
# Utilisé par GitHub Classroom Autograding
#

FICHIER="reponses.md"
SCORE=0
TOTAL=0
ERRORS=""

check_section() {
    local section="$1"
    local points="$2"
    local keyword="$3"
    TOTAL=$((TOTAL + points))

    local content
    content=$(awk "/## $section/,/^---$/" "$FICHIER" 2>/dev/null)

    if [ -z "$content" ]; then
        ERRORS="${ERRORS}\n[FAIL] Section '$section' introuvable"
        return
    fi

    local placeholder_count
    placeholder_count=$(echo "$content" | grep -c "Collez ici\|Votre réponse ici\|votre nom ici")

    local has_content
    has_content=$(echo "$content" | grep -cE "[a-zA-Z0-9]{10,}")

    if [ "$placeholder_count" -gt 0 ] && [ "$has_content" -lt 2 ]; then
        ERRORS="${ERRORS}\n[FAIL] Section '$section' — contient encore des placeholders non remplis"
        return
    fi

    if [ -n "$keyword" ]; then
        if echo "$content" | grep -qi "$keyword"; then
            SCORE=$((SCORE + points))
            echo "[PASS] Section '$section' ($points pts)"
        else
            ERRORS="${ERRORS}\n[FAIL] Section '$section' — mot-clé attendu '$keyword' non trouvé"
        fi
    else
        if [ "$has_content" -ge 2 ]; then
            SCORE=$((SCORE + points))
            echo "[PASS] Section '$section' ($points pts)"
        else
            ERRORS="${ERRORS}\n[FAIL] Section '$section' — semble vide ou insuffisant"
        fi
    fi
}

echo "=========================================="
echo "  Lab 01 — Validation automatique"
echo "=========================================="
echo ""

if [ ! -f "$FICHIER" ]; then
    echo "[FAIL] Le fichier '$FICHIER' n'existe pas !"
    echo "Score: 0/100"
    exit 1
fi

name_filled=$(grep -c "votre nom ici" "$FICHIER")
if [ "$name_filled" -gt 0 ]; then
    echo "[WARN] Pensez à mettre votre nom dans le fichier reponses.md"
fi

echo ""
echo "--- Vérification des sections ---"
echo ""

check_section "Partie 1" 10 "Hello from Docker"
check_section "Partie 2" 15 "nginx"
check_section "Partie 3" 25 "web-lab01"
check_section "Partie 4" 20 "root"
check_section "Partie 5" 15 "prune\|CONTAINER"
check_section "Partie 6" 15 ""

echo ""
echo "=========================================="
echo "  Résultat : $SCORE / $TOTAL"
echo "=========================================="

if [ -n "$ERRORS" ]; then
    echo ""
    echo "--- Erreurs détectées ---"
    echo -e "$ERRORS"
fi

echo ""

if [ "$SCORE" -ge 70 ]; then
    echo "Statut : REUSSI"
    exit 0
else
    echo "Statut : INSUFFISANT (minimum 70 points requis)"
    exit 1
fi
