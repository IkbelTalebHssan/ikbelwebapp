node {
    stage('Clone') {
    checkout scm
    }
    stage('Build image') {
    app = docker.build("ikbelwebapp")
    }
    stage('Login docker') {
    sh 'docker login -u ikbel2019 -p yaAllah19'
    }
    stage('Tag image') {
    sh 'docker tag ikbelwebapp ikbel2019/ikbelwebapp:latest'
    }
    stage('Push container') {
    sh 'docker push ikbel2019/ikbelwebapp'
    }
    
    
}
