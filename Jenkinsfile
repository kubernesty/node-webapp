pipeline {
    agent {
	label 'linux-node'
}

    stages {
        stage ('Build') {
            steps {
                script {
                    git credentialsID: 'kubernesty' url: 'https://github.com/kubernesty/node-webapp.git'
                    def dockerImage = docker.build('node:lts-slim')
                }
            }
        }
    }
}
