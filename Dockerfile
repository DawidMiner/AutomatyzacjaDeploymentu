# lightweight python image
FROM python:3.10-slim

WORKDIR /app

# skopiuj tylko requirements najpierw (cache build)
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# skopiuj resztę kodu
COPY . .

# expose port (dla dokumentacji; docker run maps zewnętrzny port)
EXPOSE 5000

CMD ["python", "app/app.py"]
