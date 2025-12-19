# Image de base
FROM python:3.11-slim

# Répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers de dépendances et installer
COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Copier le reste du projet
COPY . .

# Exposer le port utilisé par ton appli
EXPOSE 8000

# Commande pour lancer ton application
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
