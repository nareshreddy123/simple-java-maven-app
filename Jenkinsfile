pipeline {
    agent any
    stages {
        stage('Build Application') {
            steps {
                sh 'mvni clean package'
            }
            post {
                success {
                    echo "Now Archiving the Artifacts...."
                    archiveArtifacts artifacts: '**/*.jar'
                }
            }
        }

        stage('Create Tomcat Docker Image'){
            steps {
                sh "pwd"
                sh "docker build . -t nareshboreddy/web-app"
            }
        }

    }
}
