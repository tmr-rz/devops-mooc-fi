#!/bin/bash

set -e

echo "🚀 Deploying Log Output Application to Kubernetes"

# Check if kubectl is available
if ! command -v kubectl &> /dev/null; then
    echo "❌ kubectl is not installed. Please install kubectl first."
    exit 1
fi

# Check if Docker is running
if ! docker info &> /dev/null; then
    echo "❌ Docker is not running. Please start Docker Desktop."
    exit 1
fi

# Check if Kubernetes is available
if ! kubectl cluster-info &> /dev/null; then
    echo "❌ Kubernetes cluster is not available. Please enable Kubernetes in Docker Desktop or start minikube."
    exit 1
fi

echo "✅ Prerequisites check passed"

# Build the Docker image
echo "🔨 Building Docker image..."
docker build -t log-output:latest .

# Deploy to Kubernetes
echo "☸️  Deploying to Kubernetes..."
kubectl apply -f manifests.yaml

# Wait for deployment to be ready
echo "⏳ Waiting for deployment to be ready..."
kubectl wait --for=condition=available --timeout=300s deployment/log-output

# Show pod status
echo "📊 Pod status:"
kubectl get pods -l app=log-output

echo ""
echo "🎉 Deployment complete!"
echo ""
echo "To view logs, run:"
echo "kubectl logs -l app=log-output -f"
echo ""
echo "To clean up, run:"
echo "kubectl delete -f manifests.yaml"
