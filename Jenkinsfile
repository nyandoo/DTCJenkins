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
                withCredentials([usernamePassword(credentialsId: 'test-credential', usernameVariable: 'username', passwordVariable: 'password')]) {
                  sh 'echo $username'
                  echo password
                  echo "username is $username"
                }
                    //sh 'docker login -u username -p ${dockerpwd}'
                    //sh 'docker push dtcjenkins:latest .'                    
                }
            }
        }
    }
}
