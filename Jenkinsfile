pipeline {
    agent {label 'talys'}
    
    environment{
        IMAGE="leonelfeukouo/talys_app:v_${env.BUILD_NUMBER}"
        DOCKERHUB_CREDENTIALS = credentials('LeonelDockerHub')
    }
    
    tools {
      maven 'maven'
  }
  
    stages {
        //stage('CLONE avec Git') {
        //    steps {
        //        git branch:'main', url:'https://github.com/LeonelFeukouo/Gestion_java.git'
        //    }
        //}

        stage('BUILD avec Maven') {
            steps {
                sh 'mvn clean package'
            }
        }
        
        stage('TEST avec Sonarqube') {
          steps {
            withSonarQubeEnv('sq1') { 
              sh 'mvn org.sonarsource.scanner.maven:sonar-maven-plugin:3.9.0.2155:sonar'
            }
          }
        }

        stage('Deploy to Nexus') {
            steps {
                nexusArtifactUploader artifacts: [
                    [
                        artifactId: 'Gestion', 
                        classifier: '', 
                        file: './target/Gestion.war', 
                        type: 'war'
                    ]
                ], 
                credentialsId: 'nexus_connexion', 
                groupId: 'com.WA', 
                nexusUrl: '51.91.204.154:8082', 
                nexusVersion: 'nexus3', 
                protocol: 'http', 
                repository: 'Gestion_java', 
                version: '1.0.4-SNAPSHOT'
            }
        }
    
        stage('Creation de l\'image docker') {
            steps {
                sh 'docker build -t ${IMAGE} .'
            }
        }
        
        stage('Push Image') {
            steps {
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
                sh 'docker push ${IMAGE}'
                sh 'docker logout'
            }
        }
        
        stage('Lancement du conteneur') {
            steps {
                script {
                    def containerId = sh(returnStdout: true, script: "docker ps -a -q -f name=app").trim()
                    if (containerId) {
                        echo "Ancien conteneur détecté, app = $containerId"
                        sh "docker rm -f app"
                        sh 'docker run -d --name app -p 8080:8080 ${IMAGE}'
                    } else {
                        echo "Aucun ancien conteneur trouvé"
                        sh 'docker run -d --name app -p 8080:8080 ${IMAGE}'
                    }
                }
                
            }
        }
        
        stage('Suppression de l\'image') {
            steps {
                sh 'docker rmi -f ${IMAGE}'
            }
        }

    }
}
