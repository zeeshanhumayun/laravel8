pipeline {
	agent any
	stages {
		stage('Build') {
			agent {
				dockerfile true
			}
			steps {
				sh 'php --version'				
				sh 'composer install'
                sh 'composer --version'
				sh 'echo printing $testEnvVar nice yaar'
				sh 'cp .env.example .env'
				sh 'php artisan key:generate'				
			}
		}
		stage('Deploy') {            
            steps {
            	sh 'cp -r index.html  /var/www/zeeshan1/html/index.html'
            }
        }
	}
}