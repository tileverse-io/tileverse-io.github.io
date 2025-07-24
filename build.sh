#!/bin/bash

# Build the MkDocs site for production

set -e

echo "🏗️  Building MkDocs site..."

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

# Clean previous build
if [ -d "site" ]; then
    echo "🧹 Cleaning previous build..."
    rm -rf site
fi

# Build the site
echo "🔨 Building static site..."
mkdocs build --strict

echo "✅ Build complete! Static site is in the 'site/' directory"
echo "📂 Total size: $(du -sh site | cut -f1)"