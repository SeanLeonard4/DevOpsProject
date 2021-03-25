pipeline{
    agent any
    environment{
        MYSQL_ROOT_PASSWORD = credentials("MYSQL_ROOT_PASSWORD")
    }
    stages{
        stage("install dependencies"){
            steps{
                sh "bash install-dependencies.sh"
            }
        }
        stage("build"){
            steps{
                sh "docker-compose build --parallel"
            }
        }
        stage("push"){
            steps{
                sh "docker-compose push"
            }
        }
        stage("deploy"){
            steps{
                sh "docker-compose up -d"
            }
            
        }
    }
}