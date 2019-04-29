pipeline {
  agent any
  stages {
    stage('Prepare') {
      steps {
        echo 'Starting'
        echo 'Second'
        input(message: 'What is the repo name?', id: 'repo', ok: '1')
      }
    }
  }
}