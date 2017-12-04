pipeline {
    agent any
    stages{
        stage('Build'){
            steps {
                sh 'mvn clean package'
            }
            post{
                success {
                    echo 'Now Archiving'
                    archiveArtifacts artifacts: '**/target/*.war'
                }
            }
        }
        stage('Deploy to QA'){
            steps {
                build job: 'deploy-2-QA'
            }
        }
        
        stage('Deploy to Staging'){
            steps {
                timeout(time:5, unit:'DAYS'){
                    input message: 'Approve Staging Deployment?'
                }

                build job: 'deploy-2-staging'
            }
            post{
                success{
                    echo 'Code deployed to Staging.'
                }

                failure {
                    echo 'Depmoyment failed.'
                }
            }
        }
        
    }
}