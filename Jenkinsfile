pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                echo "Build Pipeline DEMO"
                bat "mvn compile"
            }
        }
        stage('deploy') {
            steps {
                echo "Deploy Pipeline DEMO"
                bat "mvn install"
            }
        }
    }
}