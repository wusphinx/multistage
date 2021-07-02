pipeline {
  agent any
  stages {
    stage('a1') {
      parallel {
        stage('a1') {
          steps {
            echo 'a1'
          }
        }

        stage('a2') {
          steps {
            echo 'a2'
          }
        }

        stage('a3') {
          steps {
            echo 'a3'
          }
        }

      }
    }

    stage('b1') {
      steps {
        echo 'b1'
      }
    }

  }
}