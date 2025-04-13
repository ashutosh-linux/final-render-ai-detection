# Use official Python image
FROM python:3.10-slim

# Set workdir
WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    build-essential \
    python3-dev \
    python3-pyqt5 \
    cmake \
    libgl1-mesa-glx \
    && pip install --upgrade pip

# Copy files
COPY . .

# Install Python dependencies except detectron2
RUN pip install --no-cache-dir -r requirements.txt

# Install detectron2 separately from GitHub (Render-safe)
RUN pip install 'git+https://github.com/facebookresearch/detectron2.git'

# Expose streamlit port
EXPOSE 8501

# Run the app
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.enableCORS=false"]
