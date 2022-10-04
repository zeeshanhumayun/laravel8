pipeline {
	agent any
	stages {
		stage('Build') {
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
				sh 'php artisan key:generate'				
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