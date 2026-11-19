# Neuro Vision

Experimental dyslexia screening prototype: webcam eye tracking (MediaPipe FaceMesh) + speech recognition,
12 eye-movement features, a Random Forest model (FastAPI) and MySQL storage.
Not a clinical diagnosis.

## Run (Windows)
Double-click `start_neuro_vision.bat`, or see `HOW_TO_RUN.txt`. Use Chrome; open http://127.0.0.1:8000.

## Setup
- Copy `neuro-vision-backend/.env.example` to `neuro-vision-backend/.env` and fill in your MySQL details.
- `python check_database.py` verifies the database; `schema.sql` creates the tables.

## Structure
- `neuro-vision-backend/` FastAPI, model files (`*.pkl`), `Dyslexia.ipynb`, MySQL layer
- `neuro-vision-frontend/` web app (`index.html`, `script.js`, `reading-analysis.js`, `report.js`)
