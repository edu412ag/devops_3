FROM python:3.9-slim

WORKDIR /app

# Copiar el archivo requirements.txt al directorio de trabajo en la imagen
COPY . /app/

# Instalar dependencias
RUN pip install --no-cache-dir -r app/requirements.txt

# Copiar el resto del código de la app


# Exponer el puerto que usará la app
EXPOSE 5001

ENV FLASK_APP=app/app.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_RUN_HOST=5001

# Comando para ejecutar la aplicación
CMD ["flask", "run"]
