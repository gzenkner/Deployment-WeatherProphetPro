# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

# Set environment variables
ENV GOOGLE_CLOUD_PROJECT=your_project_id
ENV GOOGLE_APPLICATION_CREDENTIALS=/app/you_creds.json

# Copy the credentials file into the container
COPY you_creds.json /app/you_creds.json



# Run app.py when the container launches
CMD ["python", "main.py"]
