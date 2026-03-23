#!/bin/bash
# MiniGPT4 Virtual Environment Activation Script
# Use this script to activate the MiniGPT4 virtual environment and run BAP attack

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
VENV_PATH="${SCRIPT_DIR}/minigpt4_venv"

if [ ! -d "${VENV_PATH}" ]; then
    echo "Error: Virtual environment not found at ${VENV_PATH}"
    echo "Please ensure the minigpt4_venv directory exists."
    exit 1
fi

# Activate virtual environment
source "${VENV_PATH}/bin/activate"

echo "========================================"
echo "MiniGPT4 Virtual Environment Activated"
echo "========================================"
echo "Python: $(which python)"
echo "Torch: $(python -c 'import torch; print(torch.__version__)')"
echo "Transformers: $(python -c 'import transformers; print(transformers.__version__)')"
echo "========================================"
echo ""
echo "MiniGPT4 Model Status: READY"
echo "  - vicuna-7b: /home/ubuntu/data/models/vicuna-7b"
echo "  - checkpoint: /home/ubuntu/data/models/pretrained_minigpt4.pth"
echo ""
echo "To run BAP attack test case generation:"
echo "  python run_pipeline.py --config config/general_config.yaml --stage test_case_generation"
echo ""
