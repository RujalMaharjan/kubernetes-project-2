# kubernetes-project-2

# Python Time Application

This project deploys a Python web application that displays the current time in Toronto, Canada, using Docker image deployed in Kubernetes.

## Steps to Build and Deploy

### Docker

1. **Build Docker Image:**
```bash
docker build -t rujalmhn/kubernetes-project2:2.0 .
```

2. **Push Docker Image:**
```bash
docker push rujalmhn/kubernetes-project2:2.0
```

### Kubernetes

1. **Kubernetes Setup:**
```bash
minikube start
```

2. **Deployment Verification**
```bash
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
```

3. **Apply Deployment and Service:**
```bash
kubectl get services
kubectl get pods -o wide
```

4. **Access the Application:**
```bash
minikube service python-app-service
```

### Challenges

1. **Exposing the application via NodePort**

**Solution:** Specified a NodePort "30300" in the service.yaml file which is within the valid range (30000-32767)

2. **Accessing the application**

**Solution:** use the command "minikube service python-app-service"