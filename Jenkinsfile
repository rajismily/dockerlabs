pipeline {
    agent any

  stages {

        stage('Build') {
            steps {
                sh"sudo docker build -t myapp .'
            }
        }

        stage('Test') {
            steps {
                sh 'sudo docker run --name Docker -p 8085:8000 myapp'
            }
        }

        stage('Deploy') {
            steps {
                sh 'sudo docker tag myapp rajismily/myapp:latest'
                sh 'sudo docker push rajismily/myapp:latest'
            }
        }

        stage('Cleanup') {
            steps {
                sh 'sudo docker rmi myapp'
                sh 'sudo docker rmi rajismily/myapp:latest'
            }
        }
    }
}

