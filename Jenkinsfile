pipeline {
    agent any
    environment{
        AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        AWS_DEFAULT_REGION  = "ap-south-1"
    }
    
    stages{
        stage('Checkout git code '){
            steps{
                script{
                    checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/anandvihari71/terraform-jenkins-eks.git']])
                }
            }
        }
        stage('Terraform eks init'){
            steps{
                script{
                    dir('EKS'){
                        sh 'terraform init'
                    }
                }
            }
            
        }
         stage('Terraform eks Format'){
            steps{
                script{
                    dir('EKS'){
                        sh 'terraform fmt'
                    }
                }
            }
            
        }
         stage('Terraform eks Validate'){
            steps{
                script{
                    dir('EKS'){
                        sh 'terraform validate'
                    }
                }
            }
            
        }
        stage('Terraform eks preveiw'){
            steps{
                script{
                    dir('EKS'){
                        sh 'terraform plan'
                    }
                }
            }
            
        }
         stage('Terraform eks apply or destroy'){
            steps{
                script{
                    dir('EKS'){
                        sh 'terraform $action --auto-approve'
                    }
                }
            }
            
        }
         stage('Deploy nginx application'){
            steps{
                script{
                    dir('EKS/Configurationfiles'){
                        sh 'aws eks update-kubeconfig --name my-eks-cluster'
                        sh 'kubectl apply -f deployment.yaml'
                        sh 'kubectl apply -f service.yaml'
                    }
                }
            }
            
        }
    }
}