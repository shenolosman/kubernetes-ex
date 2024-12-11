# k8s

- kubectl --kubeconfig=./kubeconfig.yaml apply -f [filename] => apply file to kubernetes enviroment thro kubeconfig file 
- kubectl --kubeconfig=./kubeconfig.yaml get svc => list cluster ip/post
- kubectl --kubeconfig=./kubeconfig.yaml get svc --namespace [name]
- kubectl --kubeconfig=./kubeconfig.yaml exec -it [dbname] sh --namespace=[namespaceName]
- check skapadb.txt

---------- 

- kubectl get deployments -n [namespaceName]
- kubectl get services -n [namespaceName]
- kubectl get pods -n [namespaceName]


- kubectl describe deployment [dockername] -n [namespaceName]
- kubectl describe service [dockername]-service -n [namespaceName]


-kubectl --kubeconfig=./kubeconfig.yaml rollout restart -n [namespaceName] deployment [dockername]

for creating new secret regcred =>

- kubectl create secret docker-registry regcred --docker-server=https://index.docker.io/v1/ --docker-username=<ditt-användarnamn> --docker-password=<ditt-lösenord> --docker-email=<din-epost> -n [namespaceName]

- kubectl get secrets -n [namespaceName]


to delete replicaset:
- kubectl delete -n [namespaceName] replicaset [name-with-id]


kubectl --kubeconfig=./kubeconfig.yaml  -n keel get pods