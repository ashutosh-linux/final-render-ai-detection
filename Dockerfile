FROM python:3.9-slim

WORKDIR /app

COPY . /app

RUN apt-get update && apt-get install -y     python3-opencv     python3-dev     libgl1-mesa-glx     libglib2.0-0     && pip install --upgrade pip     && pip install -r requirements.txt

EXPOSE 8501

CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]