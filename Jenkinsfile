pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                mvn compile
            }
        }
        stage('deploy') {
            steps {
                mvn package
            }
        }
    }
}