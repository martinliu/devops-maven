pipeline {
    agent any
    
    triggers {
        pollSCM('* * * * *')
    }
        stages{
            stage('Build'){
                steps {
                    sh '''sudo  mvn clean package
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
                    stage ('Deploy to QA'){
                        steps {
                            sh '''sudo docker rm -f devops-maven-java-app1-qa
                                sudo docker run -d --name devops-maven-java-app1-qa -p 9181:8080 martinliu/devops-maven-java'''
                        }    
                    }

                    stage ("Run Static Analysis"){
                        steps{
                            sh 'nvn clean checkstyle:checkstyle'
                        }
                        steps{
                            checkstyle canComputeNew: false, defaultEncoding: '', healthy: '', pattern: '', unHealthy: ''
                        }
                    }
                    
                }
            }
        }    
}