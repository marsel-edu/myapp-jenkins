podTemplate(yaml: """
apiVersion: v1
kind: Pod
metadata:
  labels:
    some-label: some-label-value
spec:
  containers:
  - name: busybox
    image: busybox
    command:
    - cat
    tty: true
"""
) {
    node(POD_LABEL) {
      container('busybox') {
        sh "hostname"
      }
    }
}
