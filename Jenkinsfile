pipeline {
    agent any

    parameters {
        string(name: 'REPO_NAME', defaultValue: 'my-repo', description: 'Name of the repository')
    }

    stages {
        stage('Build') {
            steps {
                sh 'git clone git@github.com:Ramcv37/dockerlabs.git'
                echo "Repository Name: ${params.REPO_NAME}"
                // Use the REPO_NAME parameter in your build steps
            }
        }
    }
}

