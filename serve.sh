#!/bin/bash

# Serve the MkDocs site locally for development

set -e

echo "🚀 Starting MkDocs development server..."
echo "📝 Documentation will be available at: http://127.0.0.1:8000"
echo "🔄 The server will auto-reload when files change"
echo ""

# Check if virtual environment exists, create if not
if [ ! -d "venv" ]; then
    echo "📦 Creating virtual environment..."
    python3 -m venv venv
    source venv/bin/activate
    echo "📥 Installing dependencies..."
    pip install -r requirements.txt
else
    source venv/bin/activate
fi

# Start the development server
mkdocs serve