pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'mvn comiple'
            }
        }
        stage('deploy') {
            steps {
                sh 'mvn package'
            }
        }
    }
}