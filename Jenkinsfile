pipeline {
    agent any
    stages {
        stage('Clone') {
            steps {
                git branch: 'main', url: 'https://github.com/batungnbt/test-jenkins'
            }
        }
        stage('Build') {
            steps {
                withDockerRegistry(credentialsId: 'docker-hub', url: 'https://index.docker.io/v1/') {
                    sh 'docker build -t batungnbt/test-jenkins:v1 .'
                    sh 'docker push batungnbt/test-jenkins:v1'
                }
            }
        }
        stage('Remote SSH') {
            steps {
                sshagent(['ssh-remote']) {
                    sh 'ssh -o StrictHostKeyChecking=no -l root 58.84.1.238 touch test.txt'
                }
            }
        }
    }
}