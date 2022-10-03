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
				sh 'cp .env.example .env'
				sh 'php artisan key:generate'
				sh 'cp -r /var/lib/jenkins/workspace/laravel/.  /var/www/zeeshan1/html'
			}
		}
	}
}