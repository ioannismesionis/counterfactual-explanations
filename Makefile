.PHONY: setup venv clean install

# Default target
all: setup

# Create virtual environment and install requirements
setup: venv install

# Create virtual environment
venv:
	@echo "Creating virtual environment..."
	@python3 -m venv .venv
	@. .venv/bin/activate && python3 -m pip install --upgrade pip
	@. .venv/bin/activate && python3 -m pip install uv

# Install requirements using pip
install:
	@echo "Installing requirements..."
	@. .venv/bin/activate && python3 -m pip install -r requirements.txt

# Clean up virtual environment and cache
clean:
	@echo "Cleaning up..."
	@rm -rf .venv
	@rm -rf __pycache__
	@rm -rf .pytest_cache
	@rm -rf .coverage
	@find . -type d -name "__pycache__" -exec rm -rf {} +
	@find . -type f -name "*.pyc" -delete

# Show help
help:
	@echo "Available targets:"
	@echo "  setup    - Create virtual environment and install requirements"
	@echo "  venv     - Create virtual environment only"
	@echo "  install  - Install requirements only"
	@echo "  clean    - Remove virtual environment and cache files"
	@echo "  help     - Show this help message" 