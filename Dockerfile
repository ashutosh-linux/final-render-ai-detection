# Use official Python image
FROM python:3.10-slim

# Set work directory
WORKDIR /app

# Install dependencies (including git)
RUN apt-get update && \
    apt-get install -y git && \
    pip install --upgrade pip

# Copy files
COPY . .

# Install Python requirements
RUN pip install -r requirements.txt

# Expose port (default for Streamlit)
EXPOSE 8501

# Command to run app
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.enableCORS=false"]
