#!groovy

pipeline {
  agent {
      label 'linux-node'
  }
  stages {
    stage('NPM Install') {
      agent {
        docker {
          image 'node:lts-slim'
        }
      }
      steps {
        sh 'npm install'
      }
    }
  }
}
