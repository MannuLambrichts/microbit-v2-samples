#!/bin/bash

# Exit on any error
set -e

echo "🔨 Building project using Python..."
if python3 build.py; then
    echo "✅ Build completed successfully."
else
    echo "❌ Build failed. Aborting."
    exit 1
fi

# Check if the file was created
if [ ! -f "MICROBIT.hex" ]; then
    echo "❌ MICROBIT.hex not found. Make sure build.py outputs the file."
    exit 1
fi

# Check if micro:bit is mounted
if [ -d "/Volumes/MICROBIT" ]; then
    echo "📁 micro:bit detected at /Volumes/MICROBIT."
    echo "📤 Copying MICROBIT.hex to micro:bit..."
    cp MICROBIT.hex /Volumes/MICROBIT
    echo "✅ Flash complete."
else
    echo "❌ micro:bit not mounted. Please connect it via USB and ensure it appears as /Volumes/MICROBIT."
    exit 1
fi
