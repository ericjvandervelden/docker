# Use an official Python runtime as a parent image
from python:2.7-slim

# Set the working directory to /app
workdir app 		#= workdir /app

# Copy the current directory contents into the container at /app
copy . . 				#= copy . /app

# Install any needed packages specified in requirements.txt
run pip install --trusted-host pypi.python.org -r requirements.txt

# Make port 80 available to the world outside this container
expose 80

# Define environment variable
env NAME World

# Run app.py when the container launches
cmd ["python", "app.py"]
