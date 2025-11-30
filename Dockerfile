FROM python:3.10

WORKDIR /app

# Copy all project files
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose ports
EXPOSE 8000 8501

# Run both FastAPI & Streamlit safely
CMD ["sh", "-c", "uvicorn backend.app.main:app --host 0.0.0.0 --port 8000 & streamlit run frontend/streamlit_app.py --server.port=8501 --server.address=0.0.0.0 & wait"]
