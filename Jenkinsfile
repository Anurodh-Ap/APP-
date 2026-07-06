pipeline {
  agent any

  environment {
    IMAGE_NAME = 'hillside-coffee-app'
    IMAGE_TAG = "${BUILD_NUMBER}"
  }

  stages {
    stage('Build') {
      steps {
        script {
          docker.build("${IMAGE_NAME}:${IMAGE_TAG}")
        }
      }
    }

    stage('Smoke Test') {
      steps {
        script {
          def app = docker.image("${IMAGE_NAME}:${IMAGE_TAG}")
          app.run('-d -p 5622:80 --name test-${BUILD_NUMBER}')
          sh 'sleep 5'
          sh 'curl -f 54.211.188.243:5622'
        }
      }
    }

    stage('Cleanup') {
      steps {
        sh 'docker rm -f test-${BUILD_NUMBER} || true'
      }
    }
  }

  post {
    always {
      cleanWs()
    }
  }
}
