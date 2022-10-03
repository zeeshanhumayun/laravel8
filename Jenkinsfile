pipeline {
	agent {
		dockerfile true
	}
	stages {
		stage('Example') {
			steps {
				echo 'Hello World!'
				echo 'Zeeshan 3'
				sh 'echo printing $testEnvVar'
			}
		}
	}
}