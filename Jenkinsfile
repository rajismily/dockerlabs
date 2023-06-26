pipeline {
    agent any

  stages {

        stage('Build') {
            steps {
                sh 'docker build -t myapp .'
            }
        }

        stage('Test') {
            steps {
                sh """
                    docker run --name dev myapp
                   """
            }
        }
      stage('Publish') {
            steps {
                script {
                    withCredentials([usernamePassword(credentialsId: 'docker-hub-credentials', usernameVariable: 'rajismily', passwordVariable: 'DOCKER_PASSWORD')]) {
                        sh "docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD"
                        sh "docker push your-image-name:${BUILD_NUMBER}"
                    }
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

