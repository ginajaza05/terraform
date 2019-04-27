 pipeline {
    agent any

    stages {
        stage('Init') {
            steps {
                sh 'terraform init' 
            }
        }
        stage('Plan ') {
            steps {
               sh 'terraform plan -var-file=ec2.tfvars' 
            }
        }
    }
}
