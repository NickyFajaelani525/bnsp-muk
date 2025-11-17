// File: Jenkinsfile

pipeline {
    agent any // Jalankan di server Jenkins mana saja yang tersedia

    stages {
        stage('1. Git Checkout') {
            steps {
                // Ambil kode dari GitHub (ganti URL repo Anda)
                git url: 'https://github.com/NickyFajaelani525/bnsp-muk.git', branch: 'main'
            }
        }

        stage('2. Build Docker Image') {
            steps {
                // Bangun image Docker baru dengan nama 'my-web-app'
                sh 'docker build -t my-web-app .'
            }
        }

        stage('3. Deploy New Container') {
            steps {

                sh 'docker stop kopika-web || true'
                sh 'docker rm kopika-web || true'

                sh 'docker run -d --name kopika-web -p 80:80 my-web-app'
            }
        }
    }

    post {
        always {
            // Bersihkan image yang lama agar server tidak penuh
            sh 'docker image prune -f'
        }
    }
}
