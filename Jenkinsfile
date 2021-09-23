pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                echo "Build Pipeline DEMO"
                sh "mvn compile"
            }
        }
        stage('deploy') {
            steps {
                echo "Deploy Pipeline DEMO"
                sh "mvn install"
            }
        }
    }
}