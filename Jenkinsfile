pipeline {
    agent any

    stages {
        stage('Deployment') {
            steps {
                // Your deployment steps here
                sh 'chmod +x /var/lib/jenkins/workspace/finalpipeline/myscript.sh'
                sh 'nohup /var/lib/jenkins/workspace/finalpipeline/myscript.sh &'
            }
        }
    }
}
