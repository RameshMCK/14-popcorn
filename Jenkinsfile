pipeline {
  agent any
  stages {
    stage('greetings') {
      steps {
        sh '''echo "hello world"
'''
      }
    }
    stage('create docker') {
      steps {
        sh 'docker build -t popcorn:$BUILD_NUMBER .'
      }
    }
    stage('push docker') {
      steps {
        sh '''docker login -u rameshmck -p ___
docker push rameshmck/popcorn:$BUILD_NUMBER
'''
      }
    }
  }
}