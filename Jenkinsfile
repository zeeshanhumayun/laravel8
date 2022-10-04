pipeline {
	agent any
	stages {
		stage('Build') {
			environment {
                DB_HOST = credentials("laravel-host")
                DB_DATABASE = credentials("laravel-database")
                DB_USERNAME = credentials("laravel-user")
                DB_PASSWORD = credentials("laravel-password")
            }
			agent {
				dockerfile true
			}
			steps {
				sh 'php --version'	
				//sh 'sudo chown -R $USER ~/.composer/'			
				sh 'composer install'
                sh 'composer --version'
				sh 'echo printing $testEnvVar nice yaar'
				sh 'cp .env.example .env'
				sh 'echo DB_HOST=${DB_HOST} >> .env'
                sh 'echo DB_USERNAME=${DB_USERNAME} >> .env'
                sh 'echo DB_DATABASE=${DB_DATABASE} >> .env'
                sh 'echo DB_PASSWORD=${DB_PASSWORD} >> .env'
				sh 'php artisan key:generate'	
				sh 'php artisan migrate'			
			}
		}
		stage('Deploy') {            
            steps {
            	sh 'whoami'
            	sh 'echo ${WORKSPACE}'
            	sh 'rsync -rv --exclude=.git ${WORKSPACE}/.  /var/www/zeeshan1/html'
            }
        }
	}
}