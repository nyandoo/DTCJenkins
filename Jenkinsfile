pipeline {
    agent { dockerfile true }
    environment {
                HOME = "${env.WORKSPACE}"
            }
    stages {
        stage('build') {
            steps {
                sh 'docker build . -t latest'
            }
        }
    stage('push') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'c45c3f3f-21be-414d-9ad3-354206f7a898', passwordVariable: 'password', usernameVariable: 'username')]) {
                    sh "docker login -u ${username} -p ${password}"
                    sh 'docker push dtcjenkins:latest .' 
                }
                 
                }
            }
        }
    }
