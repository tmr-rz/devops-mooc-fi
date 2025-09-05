# DevOps with Kubernetes - Course Submissions

This repository contains my solutions for the DevOps with Kubernetes course.

## Exercises

- [1.01 - Log Output Application](https://github.com/your-username/devops-mooc-fi/tree/1.01/log_output)

## Applications

### Log Output (`log_output/`)
A Python application that generates a random UUID string on startup and outputs it every 5 seconds with a timestamp.

**Features:**
- Generates unique UUID on startup
- Outputs timestamped logs every 5 seconds
- Containerized with Docker
- Ready for Kubernetes deployment

**Example Output:**
```
2025-09-05T12:30:15.123Z: a1b2c3d4-e5f6-7890-abcd-ef1234567890
2025-09-05T12:30:20.126Z: a1b2c3d4-e5f6-7890-abcd-ef1234567890
2025-09-05T12:30:25.129Z: a1b2c3d4-e5f6-7890-abcd-ef1234567890
```
