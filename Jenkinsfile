pipeline {
    agent any
    
    triggers {
        pollSCM('* * * * *')
    }
        stages{
            stage('Build'){
                steps {
                    sh '''mvn clean package
                        sudo docker images
                        sudo docker build -t martinliu/devops-maven-java:b${BUILD_NUMBER} .
                        sudo docker push martinliu/devops-maven-java:b${BUILD_NUMBER}
                        sudo docker tag martinliu/devops-maven-java:b${BUILD_NUMBER} martinliu/devops-maven-java:latest
                        sudo docker push martinliu/devops-maven-java:latest'''
                }
                post{
                    success {
                        echo 'Now Archiving'
                        archiveArtifacts artifacts: '**/target/*.war'
                    }
                }
            }
            stage('Deploy to QA'){
                parallel{
                    stage ('Run docker in QA'){
                        steps {
                            sh '''sudo docker rm -f devops-maven-java-app1-qa
                                sudo docker run -d --name devops-maven-java-app1-qa -p 9181:8080 martinliu/devops-maven-java'''
                        }    
                    }

                    stage ('Run Static Analysis'){
                        steps{
                            sh 'mvn clean checkstyle:checkstyle'
                            checkstyle canComputeNew: false, defaultEncoding: '', healthy: '', pattern: '', unHealthy: ''
                        }
                    }
                    
                }
            }

            stage('Deploy to Staging'){
                steps {
                    timeout(time:5, unit:'DAYS'){
                        input message: 'Approve Staging Deployment?'
                    }

                    sh '''sudo docker rm -f devops-maven-java-app1-qa
                                sudo docker run -d --name devops-maven-java-app1 -p 9180:8080 martinliu/devops-maven-java'''
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