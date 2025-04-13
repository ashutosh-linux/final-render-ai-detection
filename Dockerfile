# Use an official PyTorch base image that already supports CUDA and Torch
FROM pytorch/pytorch:1.13.1-cuda11.6-cudnn8-runtime

# Set work directory
WORKDIR /app

# System dependencies
RUN apt-get update && apt-get install -y \
    git \
    build-essential \
    python3-dev \
    python3-pyqt5 \
    cmake \
    libgl1-mesa-glx \
    && rm -rf /var/lib/apt/lists/*

# Copy everything into container
COPY . .

# Install base requirements first
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Install detectron2 from GitHub
RUN pip install 'git+https://github.com/facebookresearch/detectron2.git'

# Expose Streamlit port
EXPOSE 8501

# Run the app
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.enableCORS=false"]
