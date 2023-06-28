# Use an official Python runtime as the base image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code into the container
COPY ./application/ .

# Expose the port on which the Flask app will run
EXPOSE 5000

# Set the command to run your Flask app when the container starts
CMD ["python", "app.py"]

