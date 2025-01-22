# Cahier des charges pour le projet en Processing
---

## Objectifs généraux  
Le projet doit respecter les consignes suivantes pour garantir la clarté, la maintenabilité et la qualité du code.

### 1. **Nommage des fichiers**
   - Donner des noms explicites et significatifs à tous les fichiers.
   - Les noms doivent refléter clairement leur contenu ou leur rôle dans le projet.

### 2. **Fonctionnalités et responsabilités**
   - Chaque fichier et chaque fonction doivent avoir un rôle clairement défini.
   - Décrire brièvement ce que chaque fichier est supposé faire (idéalement au début du fichier sous le pdf).

### 3. **Commentaires explicatifs**
   - Ajouter un commentaire structuré (**/** ... */**) au-dessus de chaque fonction.  
   - Les commentaires doivent inclure :
     - Son objectif ou rôle.

   **Exemple :**
   ```java

    * Objectif : Dessine un cercle à une position donnée.
   void dessinerCercle(float x, float y, float rayon) {
       ellipse(x, y, rayon * 2, rayon * 2);
   }
   ```

### 4. **Structure du code**
   - Organiser le code en sections bien définies :
     - **Imports** : Inclure uniquement les bibliothèques nécessaires.
     - **Variables globales** : Les déclarer au début avec des commentaires explicatifs.
     - **Setup** : Initialisation de la fenêtre et des paramètres globaux.
     - **Draw** : Boucle principale pour dessiner à l'écran.

### 5. **Exemples et tests**
   - Ajouter des exemples d'utilisation pour chaque fonction dans une section dédiée, si pertinent.
   - Fournir des cas de tests clairs, notamment :
     - Les entrées prévues.
     - Les résultats attendus.
   - Illustrer les tests avec des commentaires ou des affichages à l’écran.

   **Exemple :**
   ```java
   // Exemple d'utilisation de la fonction dessinerCercle
   dessinerCercle(100, 100, 50); // Dessine un cercle avec un rayon de 50 à la position (100, 100).
   ```

### 6. **Schémas et déroulage**
   - Fournir des schémas pour expliquer les principales étapes ou la logique complexe.
   - Expliquer le déroulement du code (par exemple, avec des diagrammes de flux ou des commentaires détaillés sur l'ordre d'exécution).

### 7. **Mention des membres du groupe dans les fichiers**
   - Ajouter en haut de chaque fichier un commentaire contenant :
     - Le nom du projet.
     - Les noms des membres du groupe.
     - La date de création ou de dernière modification.
     - Un résumé de ce que le fichier contient.

   **Exemple :**
   ```java
   /**
    * Projet : Simulation graphique
    * Membres du groupe : 
    *   - Alice Dupont
    *   - Bob Martin
    *   - Clara Leroy
    * Date : 22 janvier 2025
    * Description : Ce fichier contient les fonctions liées au dessin des formes géométriques.
    */
   ```

---
