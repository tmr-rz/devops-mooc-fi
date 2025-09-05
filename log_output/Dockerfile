# Use official Python runtime as base image
FROM python:3.13-slim

# Set working directory in container
WORKDIR /app

# Copy the Python script
COPY main.py .

# Make the script executable
RUN chmod +x main.py

# Run the application
CMD ["python", "main.py"]
