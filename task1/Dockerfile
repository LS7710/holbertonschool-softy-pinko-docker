# Use the latest Ubuntu image as the base
FROM ubuntu:latest

# Update the package list and upgrade installed packages
RUN apt-get update && apt-get upgrade -y

# Install Python3 and pip3
RUN apt-get install -y python3 python3-pip

# Remove EXTERNALLY-MANAGED if necessary (to prevent installation errors)
RUN rm /usr/lib/python*/EXTERNALLY-MANAGED

# Install Flask using pip3
RUN pip3 install flask

# Set the working directory to /app
WORKDIR /app

# Copy the Flask app code to the Docker image
COPY ./api.py /app/api.py

# Specify the command to run the Flask server
CMD ["python3", "api.py"]