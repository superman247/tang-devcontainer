#!/bin/bash
set -e

echo "⚙️ Setting up Python virtual environment..."
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt

echo "📦 Installing Node dependencies..."
cd music_assistant
npm install
cd ..

echo "✅ Dev environment ready!"
