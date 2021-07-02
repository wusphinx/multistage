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

        stage('a4 ') {
          steps {
            echo 'a41'
            echo 'a42'
          }
        }

      }
    }

    stage('b1') {
      parallel {
        stage('b1') {
          steps {
            echo 'b1'
          }
        }

        stage('b2') {
          steps {
            echo 'b2'
          }
        }

      }
    }

  }
}