
pipeline {
    agent any

    stages {
        stage('Deployment') {
            steps {
                // Your deployment steps here
                sh 'chmod +x /var/lib/jenkins/workspace/finalpipeline/myscript.sh'
                sh 'bash -x /var/lib/jenkins/workspace/finalpipeline/myscript.sh > output.log 2>&1 &'


            }
        }
    }
}
