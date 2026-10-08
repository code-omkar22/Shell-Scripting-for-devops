#!/bin/bash

# Exit immediately if any command fails
set -e

# --------------------------------------------------
# Clone Django Application
# --------------------------------------------------
code_clone() {
    echo "Cloning the Django app....."

    if [ -d "django-notes-app" ]; then
        echo "The code directory already exists"
    else
        git clone https://github.com/LondheShubham153/django-notes-app.git
    fi
}

# --------------------------------------------------
# Install Required Packages
# --------------------------------------------------
install_requirements() {
    echo "Installing dependencies....."

    sudo yum install docker nginx -y
}

# --------------------------------------------------
# Start Docker and Nginx
# --------------------------------------------------
required_restart() {
    echo "Starting Docker and Nginx....."

    sudo systemctl enable --now docker
    sudo systemctl enable --now nginx
}

# --------------------------------------------------
# Deploy Application
# --------------------------------------------------
deploy() {
    echo "Deploying Django application....."

    cd django-notes-app

    echo "Building Docker image......."
    sudo docker build -t notes-app .

    echo "Running Docker container......."

    # Stop old container if it exists
    sudo docker rm -f notes-app-container 2>/dev/null || true

    # Run new container
    sudo docker run -d \
        --name notes-app-container \
        -p 8000:8000 \
        notes-app:latest

    echo "Docker container started successfully"
}

# --------------------------------------------------
# Main Deployment
# --------------------------------------------------

echo "********** Deployment Started **********"

if ! code_clone; then
    echo "Code cloning failed"
    exit 1
fi

if ! install_requirements; then
    echo "Installation Failed"
    exit 1
fi

if ! required_restart; then
    echo "System fault identified"
    exit 1
fi

if ! deploy; then
    echo "Deployment failed, mailing the admin"
    # sendmail
    exit 1
fi

echo "********** Deployment Successful **********"
