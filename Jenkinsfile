9pipeline {
    agent {
        label 'manager'
    }
    environment {
                HOME = "${env.WORKSPACE}"
    }
    
    stages {
        stage('build') {
            steps {
                sh 'docker build . -t nyando7/dtcjenkins:latest'
            }
        }
        stage('push') {
            steps {
                    withCredentials([usernamePassword(credentialsId: 'ab2fd322-fb8e-41ba-928b-e454b89f28a5', passwordVariable: 'password', usernameVariable: 'username')]) 
                        {   
                            sh "docker login -u ${username} -p ${password}"
                            sh 'docker push nyando7/dtcjenkins:latest' 
                        }
            }
        }
        stage('deploy') {
            steps {
                    sh 'docker run -it nyando7/dtcjenkins:latest sh'
            }
        }
    }
    
}
