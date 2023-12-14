pipeline {
    agent any

stage('Deployment') {
    steps {
        sh 'chmod +x /var/lib/jenkins/workspace/finalpipeline/myscript.sh'
        sh '/var/lib/jenkins/workspace/finalpipeline/myscript.sh > output.log 2>&1 &'
    }
}

}
