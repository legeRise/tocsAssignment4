#!/usr/bin/env groovy
pipeline {
    agent any

    stages {
        stage('Deployment') {
            steps {
                // Your deployment steps here
                sh 'chmod +x /var/lib/jenkins/workspace/finalpipeline/myscript.sh'
                sshagent (credentials: ['c833b2f7-2a7d-49f9-a70c-296cb72f43e7']) {
                    sh 'ssh -o "/var/lib/jenkins/workspace/finalpipeline/myscript.sh"'
                }
            }
        }
    }
}
