def label = "ledger-${UUID.randomUUID().toString()}"
podTemplate(label: label, containers: [
    containerTemplate(
      name: 'jenkins-slave',
      image: 'jenkinsci/jnlp-slave',
      alwaysPullImage: false,
      ttyEnabled: true,
      command: 'cat',
      envVars: [
          envVar(key: 'DOCKER_HOST', value: 'tcp://localhost:2375'),
          ],
      ),
    containerTemplate(
      name: 'dind-daemon',
      image: 'docker:18-dind',
      privileged: true,
      ttyEnabled: true,
      command: 'dockerd-entrypoint.sh'
      ),
  ]) {
    node(label) {
      checkout scm
      container('jenkins-slave') {
        stage('Deploy'){
            sh '''
            make build
            '''
        }
      }
    }
}

