pipeline {
    agent any

    stages {
        stage('Deployment') {
            steps {
                script {
                    sh 'chmod +x /var/lib/jenkins/workspace/finalpipeline/myscript.sh'

                    // Run the script in the background and redirect output
                    try {
                        sh '/var/lib/jenkins/workspace/finalpipeline/myscript.sh > output.log 2>&1 &'
                    } catch (Exception e) {
                        // Print an error message, but continue with the pipeline
                        echo "Error running the script: ${e.message}"
                    }
                }
            }
        }
    }
}
