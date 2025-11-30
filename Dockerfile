FROM python:3.10

WORKDIR /app

COPY . /app
RUN pip install -r requirements.txt

EXPOSE 8000 8501

# Run both FastAPI & Streamlit (simple for learning)
CMD uvicorn backend.app.main:app --host 0.0.0.0 --port 8000 & \
    streamlit run frontend/streamlit_app.py --server.port=8501 --server.address=0.0.0.0
