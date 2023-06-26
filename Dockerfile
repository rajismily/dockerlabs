
# Use a base image with the desired runtime environment
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file to the container
COPY requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code to the container
COPY . .

# Expose the desired port for the web application
EXPOSE 8000

# Specify the command to run the web application
CMD ["python", "app.py"]

