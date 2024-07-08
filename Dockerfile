# First stage: Build environment
FROM python:3.11-slim as build

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Second stage: Runtime environment
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /app

# Copy the application code from the build stage
COPY --from=build /app /app

# Make port 3030 available to the world outside this container
EXPOSE 5000

# Run app.py when the container launches
CMD ["python", "app.py"]
