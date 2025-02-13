#!/bin/bash
uvicorn backend.main:app --host 0.0.0.0 --port 8000 &  # Start FastAPI
streamlit run frontend/app.py --server.port 8501 --server.address 0.0.0.0 --server.enableCORS false --server.enableXsrfProtection false --server.headless true  # Start Streamlit
