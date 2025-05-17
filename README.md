# Counterfactual Explanations POC

This project demonstrates how to use DiCE-ML for generating counterfactual explanations in regression problems. The implementation uses a Kaggle dataset to show how to explain model predictions and suggest actionable changes to achieve desired outcomes.

## Setup

1. Create a virtual environment using `uv`:
```bash
uv venv
source .venv/bin/activate  # On Unix/macOS
# or
.venv\Scripts\activate  # On Windows
```

2. Install dependencies:
```bash
uv pip install -r requirements.txt
```

3. Download the Kaggle dataset and place it in the `data` directory.

## Project Structure

```
.
├── data/               # Dataset directory
├── notebooks/          # Jupyter notebooks
├── requirements.txt    # Project dependencies
└── README.md          # This file
```

## Usage

1. Open the Jupyter notebook in the `notebooks` directory
2. Follow the step-by-step implementation of counterfactual explanations
3. Experiment with different parameters and features to generate counterfactuals

## Features

- Regression-based counterfactual explanations
- Feature importance analysis
- Actionable insights generation
- Model-agnostic approach
