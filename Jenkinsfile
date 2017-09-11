pipeline {
  agent any
  environment {
    DOCKER_PASWORD=credentials('DOCKER_PASSWORD')
  }
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
        sh '''docker login -u rameshmck -p $DOCKER_PASSWORD
docker push rameshmck/popcorn:$BUILD_NUMBER
'''
      }
    }
  }
}