pipeline{
    agent any
    tools {
  maven 'MAVEN_HOME'
}
        stages{
            stage("Git checkout"){
                steps{
                    //Git repository URL her
                    checkout([$class: 'GitSCM', branches: [[name: '*/main']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'f4822eb2-222a-406b-b8ca-8dd5713a7e11', url: 'https://github.com/suneel-sagi/onlinebookstore.git']]])

                }
            }
            stage("code build with maven"){
                steps{
                    //maven goles spesify hear
                    sh 'mvn clean package'
                }
            }
            stage("Deploy war file to web server"){
                steps {
                    deploy adapters: [tomcat8(credentialsId: 'tomcat8', path: '', url: 'http://18.205.107.252:8080')], contextPath: null, war: '**/*.war'
                }
            }


        }
}