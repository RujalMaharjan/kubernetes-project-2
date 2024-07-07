# Use an official Python runtime as a parent image
FROM python:3.9-slim as builder

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Stage 2: Final stage
FROM python:3.9-slim

# Set the working directory in the final image
WORKDIR /app

# Copy installed packages from the builder
COPY --from=builder /root/.local /root/.local

# Ensure scripts in .local are callable
ENV PATH=/root/.local/bin:$PATH

# Copy the Flask application files
COPY . .

# Make port 80 available to the world outside this container
EXPOSE 80

# Run app.py when the container launches
CMD ["python", "app.py"]
