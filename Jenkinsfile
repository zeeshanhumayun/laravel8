pipeline {
	agent {
		dockerfile true
	}
	stages {
		stage('Build') {
			steps {
				sh 'php --version'				
				sh 'composer install'
                sh 'composer --version'
				sh 'echo printing $testEnvVar nice yaar'
			}
		}
	}
}