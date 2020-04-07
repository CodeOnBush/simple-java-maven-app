pipeline {
    agent {
        docker {
            image 'maven:3-alpine'
            args '-v /root/.m2:/root/.m2'
        }
    }
    stages {
        stage('构建') {
            steps {
                sh 'mvn -B -DskipTests clean package'
            }
        }
        stage('测试') {
            steps {
                sh 'mvn test'
            }
            post {
                always {
                    junit 'target/surefire-reports/*.xml'
                }
            }
        }
        stage('部署') {
            steps {
                sh './jenkins/scripts/deliver.sh'
            }
        }
    }
}