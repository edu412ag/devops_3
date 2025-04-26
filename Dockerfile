FROM python:3.9

WORKDIR /app

# Copiar el archivo requirements.txt al directorio de trabajo en la imagen
COPY app/requirements.txt .

# Instalar dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el resto del código de la app
COPY . .

# Exponer el puerto que usará la app
EXPOSE 5001

ENV FLASK_APP=app/app.python
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_RUN_HOST=5001

# Comando para ejecutar la aplicación
CMD ["Flask", "run"]
