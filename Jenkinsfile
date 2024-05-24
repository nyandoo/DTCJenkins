pipeline {
    agent { dockerfile true }

    stages {
        stage('build') {
            steps {
                sh 'docker build . -t latest'
            }
        }
    stage('push') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'c45c3f3f-21be-414d-9ad3-354206f7a898', passwordVariable: '1234567890', usernameVariable: 'nyando7')]) {
                    sh "docker login -u ${usernameVariable} -p ${passwordVariable}"
                    sh 'docker push dtcjenkins:latest .' 
                }
                 
                }
            }
        }
    }
