```sh
# https://github.com/alexellis/k3sup
# https://blog.alexellis.io/multi-master-ha-kubernetes-in-5-minutes/

./bootstrap.sh

export KUBECONFIG=`pwd`/kubeconfig

kubectl run -t -i curl --image alexellis/curl:0.1.1 -- /bin/sh
curl 'https://api64.ipify.org?format=json'; echo

# https://kubernetes.io/docs/tutorials/hello-minikube/
kubectl create deployment hello-node --image=k8s.gcr.io/echoserver:1.4
kubectl expose deployment hello-node --type=LoadBalancer --port=8080
# cleanup
kubectl delete service hello-node
kubectl delete deployment hello-node
```
