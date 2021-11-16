pipeline {
    agent any
    tools{
        docker: docker
    }
    stages {
        stage('Cloning Git') {
            steps {
                git([url: 'https://github.com/khaliljedda/blog-front.git', branch: 'master'])
    }}
        stage('Docker Build and Tag') {
            steps {
                sh 'docker build -t blogfront:V1 .'
                sh 'docker tag blogfront khalil4/blogfront:V1'
                sh 'docker tag blogfront khalil4/blogfront:V1'
            }
        }

        stage('Publish image to Docker Hub') {
            steps {
                withDockerRegistry([ credentialsId: 'dockerhub_id', url: '' ]) {
                    sh  'docker push khalil4/blogfront:V1'
                    sh  'docker push khalil4/blogfront:V1'
                }
            }
        }
        }
    }
