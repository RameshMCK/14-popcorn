pipeline {
  agent any
  stages {
    stage('greeting') {
      steps {
        sh 'echo "hello, world!"'
      }
    }
    stage('build docker') {
      steps {
        sh '''docker build -t rameshmck/popcorn:$BUILD_NUMBER .
'''
      }
    }
    stage('testing') {
      steps {
        sh '''docker run rameshmck/popcorn:$BUILD_NUMBER rails test
'''
      }
    }
    stage('docker push') {
      steps {
        sh '''docker login -u rameshmck -p $DOCKER_PASSWORD
docker push rameshmck/popcorn:$BUILD_NUMBER'''
      }
    }
    stage('deploy to k8s') {
      steps {
        sh '''envsubst < deployment.yaml | kubectl apply -f -
'''
      }
    }
  }
  environment {
    DOCKER_PASSWORD = credentials('DOCKER_PASSWORD')
  }
}