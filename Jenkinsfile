pipeline{
    ageny any
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
            sh "docker-compose build --parallel"
        }
        stage("push"){
            sh "docker-compose push"
        }
        stage("deploy"){
            sh "docker-compose up -d"
        }
    }
}