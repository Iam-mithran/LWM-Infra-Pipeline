pipeline {
  agent any

  environment {
    ENV = "${env.BRANCH_NAME}"
    TF_WORKDIR = "environments/${env.BRANCH_NAME}"
  }

  stages {
    stage('Checkout') {
      steps {
        git branch: "${env.BRANCH_NAME}", url: 'https://github.com/Iam-mithran/LWM-Infra-Pipeline.git'
      }
    }

    stage('Terraform Init') {
      steps {
        dir("${TF_WORKDIR}") {
          sh 'terraform init'
        }
      }
    }

    stage('Terraform Plan') {
      steps {
        dir("${TF_WORKDIR}") {
          sh 'terraform plan -out=tfplan'
          sh 'terraform show -no-color tfplan > tfplan.txt'
          sh 'cat tfplan.txt'
        }
      }
    }

    stage('Approval') {
      /*
      when {
        expression { env.BRANCH_NAME == 'production' }
      }
      */
      steps {
        input message: "Approvee the deployment to production?", ok: 'Deploy'
      }
    }

    stage('Terraform Apply') {
      steps {
        dir("${TF_WORKDIR}") {
          sh 'terraform apply tfplan'
        }
      }
    }
  }
}