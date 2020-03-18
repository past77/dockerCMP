pipeline {
   agent any
   stages {
        stage('Build') { 
            steps {
                sh 'mvn -B -DskipTests clean package' 
            }
        }
        stage('Test') { 
            steps {
                sh 'mvn test' 
            }
        }
        stage('Deliver') { 
            steps {
                sh  'set -x'
                sh  'mvn jar:jar install:install help:evaluate -Dexpression=project.name'
                sh  'set +x'

                sh  'set -x'
                sh  'NAME=`mvn help:evaluate -Dexpression=project.name | grep "^[^\[]"`'
                sh  'set +x'

                sh  'set -x'
                sh  'VERSION=`mvn help:evaluate -Dexpression=project.version | grep "^[^\[]"`'
                sh  'set +x'

                sh  'set -x'
                sh  'java -jar target/${NAME}-${VERSION}.jar'
            }
        }
         stage('Deploy') {
            when {
              expression {
                currentBuild.result == null || currentBuild.result == 'SUCCESS' 
              }
            }
            steps {
                echo 'hello world!'
            }
        }
    }
}
