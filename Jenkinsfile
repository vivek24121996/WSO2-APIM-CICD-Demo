pipeline {
    agent any
    environment {
        CI = 'true'
        API = './user-1'
    }
    stages {
        stage('Setup APIM Environments'){
            steps{
#                withCredentials([usernamePassword(credentialsId: 'apim', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
                    sh './config.sh'
#                }
            }
        }
        stage('Deploy to Production') {
            environment{
                ENV = 'prod'
                RETRY = '60'
            }
            steps {
                echo 'Deploying to Production'
                sh 'apictl import-api -f $API -e $ENV -k --preserve-provider=false --update --verbose'
            }
        }
    }
}
