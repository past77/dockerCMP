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
               sh 'whoami'
                sh  'set -x'
                sh    'pwd'
               sh 'cp target/helloSpring.war /home/polozhevets'
      
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
