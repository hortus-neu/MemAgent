.PHONY: help install dev test lint type-check build clean

help:
	@echo "Available commands:"
	@echo "  make install      Install all dependencies from requirements.txt"
	@echo "  make dev          Run FastAPI development server with Uvicorn"
	@echo "  make test         Run unit tests using pytest"
	@echo "  make lint         Run flake8 linter on source and tests"
	@echo "  make type-check   Run static type checks using mypy"
	@echo "  make build        Build Docker image"
	@echo "  make clean        Remove cache files and build artifacts"

install:
	pip install -r requirements.txt

dev:
	uvicorn src.main:app --reload --host 0.0.0.0 --port 8000

test:
	python -m pytest tests/ -v

lint:
	flake8 src/ tests/

type-check:
	mypy src/

build:
	docker build -f docker/Dockerfile -t memagent .

clean:
	find . -type f -name "*.pyc" -delete
	find . -type d -name "__pycache__" -delete
	rm -rf .pytest_cache .mypy_cache
