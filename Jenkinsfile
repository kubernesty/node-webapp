pipeline {
    agent {
       label 'linux-node'
    }
	stages {
		stage('Build') {
		    steps {
		        script {
                            git credentialsId: 'git', 
                            url: 'https://github.com/kubernesty/node-webapp.git', 
                            branch 'main'
                            def dockerImage = docker.build('node-docker')
		        }
		    }
		}
	}
}
