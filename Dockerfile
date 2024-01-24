FROM python:3.12.0
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir --upgrade requirements.txt
COPY . .
CMD ["gunicorn","--bind","0.0.0.0:80","app:create_app()"]