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
        sh 'docker build -t rameshmck/popcorn:$BUILD_NUMBER .'
      }
    }
    stage('push docker') {
      steps {
        sh '''docker login -u rameshmck -p $DOCKER_PASSWORD
docker push rameshmck/popcorn:$BUILD_NUMBER
'''
      }
    }
  }
  environment {
    DOCKER_PASWORD = credentials('DOCKER_PASSWORD')
  }
}