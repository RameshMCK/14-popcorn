pipeline {
 agent any
 
 environment {
   DOCKER_PASSWORD = credentials('DOCKER_PASSWORD')
 }
 
 stages {
   stage('greeting') {
     steps {
       sh 'echo "hello, world!"'
     }
   }
   stage('build docker') {
     steps {
       sh '''docker build -t mckdocker/popcorn:$BUILD_NUMBER .
'''
     }
   }
   stage('docker push') {
     steps {
       sh '''docker login -u rameshmck -p $DOCKER_PASSWORD
docker push mckdocker/popcorn:$BUILD_NUMBER'''
     }
   }
 }
}