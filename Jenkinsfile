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
    stage('Docker Build') {
      agent any
      steps {
        sh 'docker build -t node:lts-slim .'
      }
    }
  }
}
