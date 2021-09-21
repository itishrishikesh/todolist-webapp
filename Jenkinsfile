pipeline {
    stages {
        stage('build') {
            steps {
                sh 'mvn comiple'
            }
        }
        stage('test') {
            steps {
                sh 'mvn test'
            }
        }
        stage('deploy') {
            steps {
                sh 'mvn package'
            }
        }
    }
}