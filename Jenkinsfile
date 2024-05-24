pipeline {
    agent any

    stages {
        stage('build') {
            steps {
                sh 'docker build -t dtcjenkins:latest'
            }
        }
    stage('push') {
            steps {
                withCredentials([usernamePassword(credentialsId: dockerHubCredentials, usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')])
                {
                    sh 'docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD'
                    sh 'docker push dtcjenkins:latest .'
                }
                    //some block
            }
        }
    }
}
