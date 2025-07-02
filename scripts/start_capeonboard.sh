#!/bin/bash

# Exit on any error
set -e

echo "🚀 Starting CapeOnboard..."

# Activate Python virtual environment if one exists
if [ -f "backend/venv/bin/activate" ]; then
  source backend/venv/bin/activate
fi

# Start the backend
echo "🔧 Starting FastAPI backend..."
cd backend
uvicorn main:app --host 0.0.0.0 --port 8000 &
BACKEND_PID=$!
cd ..

# Start the frontend
echo "🎨 Starting React frontend..."
cd client
npm run dev -- --port 5173 &
FRONTEND_PID=$!
cd ..

# Wait for both to exit
wait $BACKEND_PID
wait $FRONTEND_PID
