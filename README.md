jino

README.md


# Please edit the object below. Lines beginning with a '#' will be ignored,
# and an empty file will abort the edit. If an error occurs while saving this file will be
# reopened with the relevant failures.
#
apiVersion: v1
kind: Pod
metadata:
  creationTimestamp: "2019-10-16T11:45:58Z"
  generateName: nginx-deployments-9b956f9bf-
  labels:
    app: nginx
    pod-template-hash: 9b956f9bf
  name: nginx-deployments-9b956f9bf-74wn5
  namespace: default
  ownerReferences:
  - apiVersion: apps/v1
    blockOwnerDeletion: true
    controller: true
    kind: ReplicaSet
    name: nginx-deployments-9b956f9bf
    uid: aa76f76e-c823-42c3-8f0c-c1c08312612d
  resourceVersion: "149434"
  selfLink: /api/v1/namespaces/default/pods/nginx-deployments-9b956f9bf-74wn5
  uid: 75578885-2b4f-4021-98b0-72ece8cce1ee
spec:
  containers:
  - image: nginx
    imagePullPolicy: Always
    name: webapp
    ports:
    - containerPort: 80
      protocol: TCP
    resources: {}
    terminationMessagePath: /dev/termination-log
    terminationMessagePolicy: File
    volumeMounts:
    - mountPath: /var/run/secrets/kubernetes.io/serviceaccount
      name: default-token-vbp9f
      readOnly: true
  dnsPolicy: ClusterFirst
  enableServiceLinks: true
  nodeName: minikube
  priority: 0
  restartPolicy: Always
  schedulerName: default-scheduler
  securityContext: {}
  serviceAccount: default
  serviceAccountName: default
  terminationGracePeriodSeconds: 30
  tolerations:
