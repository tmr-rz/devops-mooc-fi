# Exercise 01 - Log Output Application

## 🎯 What We Built

We've successfully created the "Log output" application with the following components:

### ✅ Application (`ex01.py`)
- Generates a random UUID string on startup
- Stores the string in memory
- Outputs the string every 5 seconds with an ISO timestamp
- Uses modern timezone-aware datetime handling (no deprecation warnings)

### ✅ Container (`Dockerfile`)
- Based on Python 3.13-slim for minimal size
- Properly configured working directory
- Executable permissions set

### ✅ Kubernetes Deployment (`manifests.yaml`)
- Deployment with 1 replica
- Resource limits to prevent noisy neighbor issues
- Proper labeling for service discovery

### ✅ Automation (`deploy.sh`)
- Automated deployment script with prerequisites checking
- Error handling and user-friendly output

## 🚀 Next Steps for Deployment

To deploy this to your Kubernetes cluster:

1. **Start your Kubernetes environment:**
   - Docker Desktop: Enable Kubernetes in settings
   - Or use `minikube start`

2. **Run the deployment script:**
   ```bash
   cd ex01
   ./deploy.sh
   ```

3. **Check the logs:**
   ```bash
   kubectl logs -l app=log-output -f
   ```

## 📊 Expected Output Format
```
Application started. Generated string: 59c92133-3a3c-44e2-9f84-35dbed5ae73e
2025-09-04T18:47:42.686Z: 59c92133-3a3c-44e2-9f84-35dbed5ae73e
2025-09-04T18:47:47.692Z: 59c92133-3a3c-44e2-9f84-35dbed5ae73e
2025-09-04T18:47:52.697Z: 59c92133-3a3c-44e2-9f84-35dbed5ae73e
```

## 📁 File Structure
```
ex01/
├── ex01.py           # Main Python application
├── Dockerfile        # Container configuration
├── manifests.yaml    # Kubernetes deployment
├── deploy.sh         # Automated deployment script
├── README.md         # Detailed documentation
└── SUMMARY.md        # This file
```

The application is ready for Kubernetes deployment! 🎉
