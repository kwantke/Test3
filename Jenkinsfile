node {
    def WORKSPACE = "/home/ubuntu/download/jenkins_workspace/workspace/springboot-deploy"
    def dockerImageTag = "springboot-deploy${env.BUILD_NUMBER}"

    try {
        stage('Clone Repo') {
            //for display purposes
            //Get some code from a GitHub repository
            git url: 'https://github.com/kwantke/Test3.git',
                branch: 'master'
        }
        stage('Build docker') {
            //build npm
            //sh "sudo npm install"
            //sh "sudo npm run build"
            dockerImage = docker.build("springboot-deploy:${env.BUILD_NUMBER}")
        }
        stage('Deploy docker') {
            echo "Docker Image Tag Name: ${dockerImageTag}"
            sh "docker stop springboot-deploy || true && docker rm springboot-deploy || true"
            sh "docker run --name springboot-deploy -d -p 9090:9090 springboot-deploy:${env.BUILD_NUMBER}"
        }
    } catch(e){
        throw e
    }
}