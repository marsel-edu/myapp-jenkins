podTemplate(yaml: """
apiVersion: v1
kind: Pod
metadata:
  labels:
    some-label: some-label-value
spec:
  containers:
  - name: jenkins-slave
    image: jenkinsci/jnlp-slave
    command:
    - cat
    tty: true
"""
) {
    node(POD_LABEL) {
      checkout scm
      container('jenkins-slave') {
        sh "make build"
      }
    }
}
