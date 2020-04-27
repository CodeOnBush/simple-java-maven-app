import java.text.SimpleDateFormat
node {
    def dockerName='shengle'
    def dockerTag = dateFormat.format(new Date())
    stage('build'){
        docker.image('maven:3.6.0-jdk-8-alpine').inside('-v /root/.m2:/root/.m2') {
            sh 'mvn --version'
            sh 'mvn clean install'
        }
    }
    stage('docker run') {
        sh 'pwd'
        def customImage = docker.build("my-image:${dockerTag}")
        customImage.run("-it -d --name ${dockerName} -p 8090:8090")
    }
}
