pipeline {
    agent any
    environment {
                HOME = "${env.WORKSPACE}"
            }
    stages {
        stage('build') {
            steps {
                sh 'docker build . -t nyando7/dtcjenkins:latest'
            }
        }
                }
}
