# Use the official Python image as the base
FROM python:3.8-slim
# Set the working directory
WORKDIR /app
# Copy the requirements file and install dependencies
COPY . /app
RUN pip install --no-cache-dir -r requirements.txt
# Expose the port the app runs on
EXPOSE 5000
ENV NAME World
# Set the command to run the application
CMD ["python", "app.py"]
