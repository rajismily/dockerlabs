pipeline {
    agent any

  stages {

        stage('Build') {
            steps {
                sh"docker build -t myapp .'
            }
        }

        stage('Test') {
            steps {
                sh 'docker run --name Docker -p 8085:8000 myapp'
            }
        }

        stage('Deploy') {
            steps {
                sh 'docker tag myapp rajismily/myapp:latest'
                sh 'docker push rajismily/myapp:latest'
            }
        }

        stage('Cleanup') {
            steps {
                sh 'docker rmi myapp'
                sh 'docker rmi rajismily/myapp:latest'
            }
        }
    }
}
