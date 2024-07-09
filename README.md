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

1. **Apply Deployment and Service:**
```bash
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
```

2. **Access the Application:**
```bash
minikube service python-app-service
```
