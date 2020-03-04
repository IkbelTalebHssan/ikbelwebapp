pipeline {
    environment {
    registry = "ikbel2019/ikbelwebapp"
    registryCredential = 'mydockerhub'
  }
    agent any
    stages{
    stage('Clone') {
    steps {
    checkout scm
    }
    }
    stage('Build image') {
    steps {
    docker.build registry + ":$BUILD_NUMBER"
    }
    }
    stage('Tag image') {
    steps {
    sh 'docker tag ikbelwebapp ikbel2019/ikbelwebapp:latest'
    }
    }
    stage('Push container') {
    steps {
    sh 'docker push ikbel2019/ikbelwebapp'
    }
    }
    }
    
    
}
