pipeline {
    agent any
    stages {
        stage('clean'){
            steps {
                echo "mvn clean"
                bat "mvn clean"
            }
        }
        stage('build') {
            steps {
                echo "Build Pipeline DEMO"
                bat "mvn compile"
            }
        }
        stage('deploy') {
            steps {
                echo "Deploy Pipeline DEMO"
                deploy adapters: [tomcat9(url: 'http://localhost:5000/',
                                              credentialsId: 'd82dabc4-8fba-4d77-9a5d-b9d75308ceb7')],
                                     war: 'target/*.war',
                                     contextPath: 'app'
            }
        }
    }
}