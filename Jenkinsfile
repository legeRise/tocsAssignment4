#!/usr/bin/env groovy
pipeline {
    agent any

    stages {
        stage('Deployment') {
            steps {
                // Your deployment steps here
                sh 'chmod +x /var/lib/jenkins/workspace/finalpipeline/myscript.sh'
                sshagent (credentials: ['ssh-credentials-id']) {
                    sh 'ssh -o StrictHostKeyChecking=no jenkins@host_ip "/var/lib/jenkins/workspace/finalpipeline/myscript.sh"'
                }
            }
        }
    }
}
