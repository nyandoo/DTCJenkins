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
                withCredentials([usernamePassword(credentialsId: dockerHubCredentials, usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')])
                withCredentials([string(credentialsId: 'DockerHubPwd', variable: 'dockerpwd')]) {
                    sh 'docker login -u username -p ${dockerpwd}'
                    sh 'docker push dtcjenkins:latest .'                    
                }
                    //some block
            }
        }
    }
}
