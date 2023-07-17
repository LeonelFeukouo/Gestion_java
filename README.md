# **Gestion_java**
### *A Java Project For Talys InternShip in DevOps*
&nbsp;

# **1. ANALYSE DES EXIGENCES**
        Dans cette phase initiale du projet, l'objectif est d'analyser les exigences du projet en termes d'intégration continue (CI). Les activités clés réalisées au cours de cette étape sont les suivantes :
## **A. Evaluation des besoins du projet en terme de CI**
        L'évaluation des besoins du projet en termes d'intégration continue nous permet de comprendre les défis actuels et les opportunités d'amélioration. Les principales conclusions de cette évaluation sont les suivantes :
- ### **Les builds :** 
            Ils jouent un rôle clé dans le processus d'intégration continue (CI), car ils permettent de compiler le code source, de l'intégrer avec d'autres composants et de générer une version exécutable du logiciel.
- ### **Les tests :**
            Ils jouent un rôle crucial dans le processus d'intégration continue (CI), car ils permettent de vérifier la qualité et la fonctionnalité du code à chaque étape du développement. Ils sont parfois réalisés de manière ad hoc (de manière improvisée, sans suivi ou sans structure préétablie), ce qui entraîne des retards dans la détection des problèmes et une augmentation du nombre de bugs en production. Nous souhaitons donc automatiser les tests afin d'améliorer la qualité du logiciel et de réduire les délais de mise sur le marché.
- ### **Les deploiements :**
            Ils font partie intégrante du processus d'intégration continue. Ils sont souvent effectués manuellement et prennent beaucoup de temps et sont sujets à des erreurs humaines.

## **B. Identification des outils et technologies necessaire**
        Une recherche approfondie a été effectuée pour identifier les outils et les technologies nécessaires à la mise en place de l'intégration continue. Les critères suivants ont été pris en compte lors de la sélection des outils : 
- **Facilité d'utilisation et de configuration**
- **Compatibilité avec les technologies existantes utilisées dans le projet, telles que Git pour le contrôle de version**
- **Fonctionnalités offertes, telles que des tests automatisés, un déploiement continu, une intégration avec des plateformes de gestion de projet, etc...** 

&nbsp;

        Après avoir examiné différentes options, les outils suivants ont été choisis :
- ### **Jenkins :** 
        Pour l'automatisation des builds, des tests et du déploiement.
- ### **SonarQube :**
        Pour l'analyse statique du code et l'assurance de la qualité.
- ### **Docker :**
        Pour la création d'environnements de développement et de déploiement isolés.
- ### **Maven :**
        Pour le build du code source de l’application
- ### **Tomcat :**
        Pour l’exécution de l’application web

## **C. Definition des objectifs et des criteres de succes**
        Sur la base de l'évaluation des besoins, les objectifs suivants ont été définis pour l'intégration continue :
- **Réduction du temps de déploiement de 50% en automatisant les processus de build et de déploiement.**
- **Amélioration de la qualité du logiciel en augmentant la couverture des tests automatisés à 80%.**
- **Réduction des erreurs humaines liées aux déploiements manuels à zéro**

&nbsp;

        Les critères de succès pour évaluer si ces objectifs sont atteints sont les suivants :
- **Temps de déploiement moyen réduit à moins de 30 minutes.**
- **Taux de réussite des builds et des déploiements automatisés supérieur à 95%.**
- **Couverture des tests automatisés atteignant 80% dans les rapports de qualité.**
- **Aucune erreur critique liée aux déploiements manuels signalée pendant une période de 1 mois.**

&nbsp;

        En conclusion de cette phase d'analyse des exigences, nous avons acquis une compréhension approfondie des besoins spécifiques du projet en termes d'intégration continue. Les outils et les technologies appropriés ont été identifiés, et des objectifs clairs avec des critères de succès ont été définis pour guider le reste du projet.

&nbsp;

# **2. INSTALLATION DE JENKINS**
&nbsp;
# **3. CONFIGURATION DU REFERENTIEL DE CODE SOURCE**
&nbsp;
# **4. CONFIGURATION DU PROJET JENKINS**
&nbsp;
# **5. CREATION DU PIPELINE JENKINS**
&nbsp;
# **6. CONFIGURATION DES BUILDS**
&nbsp;
# **7. CONFIGURATION DES TESTS AUTOMATISES**
&nbsp;
# **8. CONFIGURATION DU DEPLOIEMENT**
&nbsp;
# **9. CONFIGURATION DES NOTIFICATIONS**
&nbsp;
# **10. TESTS ET VALIDATION**
