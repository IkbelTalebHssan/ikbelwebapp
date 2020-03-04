pipeline {
    environment {
    registry = "ikbel2019/ikbelwebapp"
    registryCredential = ‘mydockerhub’
  }
    agent any
    stages{
    stage('Clone') {
    checkout scm
    }
    stage('Build image') {
    app = docker.build registry + ":$BUILD_NUMBER"
    }
    stage('Tag image') {
    sh 'docker tag ikbelwebapp ikbel2019/ikbelwebapp:latest'
    }
    stage('Push container') {
    sh 'docker push ikbel2019/ikbelwebapp'
    }
    }
    
    
}
