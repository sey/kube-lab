# Kube Lab

Clone the project
```shell
git clone git@github.com:sey/kube-lab.git
```

Start minikube
```shell
minikube start
```

Set up Docker environment
```shell
eval $(minikube -p minikube docker-env)
```

Build app
```shell
mvn clean package
```

Build Docker image
```shell
docker build --tag example/kube-lab:latest .
```

Deploy to k8s
```shell
kubectl apply -f k8s/cm.yaml
kubectl apply -f k8s/dp.yaml
kubectl apply -f k8s/svc.yaml
```

Check the API
```shell
minikube service kube-lab-app-service --url

curl <the-url>
```

The message is always `Message from properties` instead of `Message from ConfigMap`.

https://docs.spring.io/spring-cloud-kubernetes/reference/property-source-config/configmap-propertysource.html

> The default behavior is to create a Fabric8ConfigMapPropertySource (or a KubernetesClientConfigMapPropertySource) based on a Kubernetes ConfigMap that has a metadata.name value of either the name of your Spring application (as defined by its spring.application.name property) or a custom name defined within the application.properties file under the following key: spring.cloud.kubernetes.config.name.

