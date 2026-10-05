#!/bin/bash

# Leaf Syntax v2.0 - Clean Installation Script
# Safe installation: only copies essential package files
# Excludes: .git, .gitignore, and other sensitive files

set -e  # Exit on error

echo "🍃 Leaf Syntax v2.0 - Clean Installation"
echo "=========================================="
echo ""

# Target directory
PULSAR_PACKAGES="$HOME/.pulsar/packages"
PACKAGE_NAME="leaf-syntax-pulsar"
TARGET_DIR="$PULSAR_PACKAGES/$PACKAGE_NAME"

# Get source directory
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "📂 Source: $SCRIPT_DIR"
echo "📍 Target: $TARGET_DIR"
echo ""

# Create packages directory if needed
if [ ! -d "$PULSAR_PACKAGES" ]; then
    echo "📁 Creating Pulsar packages directory..."
    mkdir -p "$PULSAR_PACKAGES"
fi

# Remove old version
if [ -d "$TARGET_DIR" ]; then
    echo "🗑️  Removing old version..."
    rm -rf "$TARGET_DIR"
fi

# Create fresh package directory
echo "📦 Creating clean package..."
mkdir -p "$TARGET_DIR"

# Copy ONLY essential package files
echo "📝 Copying essential files..."

# Required directories
cp -r "$SCRIPT_DIR/grammars" "$TARGET_DIR/" || echo "⚠️  Warning: grammars not found"
cp -r "$SCRIPT_DIR/styles" "$TARGET_DIR/" || echo "⚠️  Warning: styles not found"
cp -r "$SCRIPT_DIR/lib" "$TARGET_DIR/" || echo "⚠️  Warning: lib not found"

# Required files
cp "$SCRIPT_DIR/package.json" "$TARGET_DIR/" || echo "⚠️  Warning: package.json not found"

# Optional but useful files
if [ -f "$SCRIPT_DIR/example.leaf" ]; then
    cp "$SCRIPT_DIR/example.leaf" "$TARGET_DIR/"
    echo "✓ example.leaf copied"
fi

if [ -f "$SCRIPT_DIR/README.md" ]; then
    cp "$SCRIPT_DIR/README.md" "$TARGET_DIR/"
    echo "✓ README.md copied"
fi

if [ -f "$SCRIPT_DIR/LICENSE" ]; then
    cp "$SCRIPT_DIR/LICENSE" "$TARGET_DIR/"
    echo "✓ LICENSE copied"
fi

echo ""
echo "✅ Clean installation complete!"
echo ""
echo "📋 Installed files:"
ls -la "$TARGET_DIR" | grep -E "^d|^-" | awk '{print "   " $NF}'
echo ""
echo "🚀 Next steps:"
echo "1. Restart Pulsar Edit"
echo "2. Open a .leaf file"
echo "3. Enjoy the syntax highlighting! 🎨"
echo ""
echo "ℹ️  Note: Only essential package files were installed."
echo "   .git and sensitive files were excluded for security."
