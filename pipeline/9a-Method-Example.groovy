pipeline {
    agent any 
    stages {
        stage ('SivaStage') {
            steps {
                script {
                    printName('Siva', '20').call()
                }
            }
        }
        stage ('KrishStage') {
            steps {
                script {
                    printName('Krish').call()
                }
            }
        }
    }
}


def printName(name, agees){
    return {
        echo "Welcome Mr ${name}"
        echo "His age is ${agees}"
    }
}
