pipeline {
    agent any
    environment {
        CI = 'true'
        API = './user-1'
    }
    stages {
        stage('Setup APIM Environments'){
            steps{
                sh "chmod +x config.sh"
                    sh './config.sh'
         }
        }
        stage('Deploy to Production') {
            environment{
                ENV = 'prod'
                RETRY = '60'
            }
            steps {
                echo 'Deploying to Production'
                sh 'apictl import api -f $API -e $ENV -k --preserve-provider=false --update --verbose'
            }
        }
    }
}
