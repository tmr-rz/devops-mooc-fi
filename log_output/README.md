# Log Output Application - Exercise 1.01

This application generates a random UUID string on startup and outputs it every 5 seconds with a timestamp.

## Files

- `main.py` - The main Python application
- `Dockerfile` - Container configuration
- `manifests.yaml` - Kubernetes deployment configuration

## Local Development

### Prerequisites
- Python 3.x
- Docker Desktop (with Kubernetes enabled) or minikube
- kubectl

### Running Locally
```bash
python main.py
```

## Container & Kubernetes Deployment

### 1. Start your Kubernetes cluster
**Option A: Docker Desktop**
- Start Docker Desktop
- Go to Settings > Kubernetes > Enable Kubernetes

**Option B: minikube**
```bash
minikube start
```

### 2. Build the Docker image
```bash
docker build -t log-output:latest .
```

### 3. Deploy to Kubernetes
```bash
kubectl apply -f manifests.yaml
```

### 4. Check the deployment
```bash
kubectl get pods
kubectl logs -l app=log-output -f
```

### 5. Clean up (when done)
```bash
kubectl delete -f manifests.yaml
```

## Expected Output
```
2025-09-05T12:30:15.123Z: a1b2c3d4-e5f6-7890-abcd-ef1234567890
2025-09-05T12:30:20.126Z: a1b2c3d4-e5f6-7890-abcd-ef1234567890
2025-09-05T12:30:25.129Z: a1b2c3d4-e5f6-7890-abcd-ef1234567890
```
