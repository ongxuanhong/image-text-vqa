# Visual Question Answering (VQA) Project

## Overview
This project implements a Visual Question Answering (VQA) system that can answer natural language questions about images. The system combines computer vision and natural language processing techniques to understand both visual content and textual queries.

![VQA workflow](figures/VQA%20workflow.png) 

## Features
- Multiple model implementations:
  1. CNN + LSTM baseline model
  2. Vision Transformer + RoBERTa model
  3. Large Vision-Language Model (LLaVA) implementation
- Support for Yes/No question answering
- Pre-trained model integration
- Comprehensive evaluation metrics

## Requirements
- Python 3.8+
- PyTorch 2.0+
- Transformers
- timm
- spacy
- PIL
- numpy
- pandas
- matplotlib

## Installation
1. Clone the repository:
```bash
git clone [repository-url]
cd vqa-project
```

2. Install dependencies:
```bash
pip install -r requirements.txt
```

3. Download required models:
```bash
python -m spacy download en_core_web_sm
```

## Project Structure
```
├── data/
│   ├── vaq2.0.TrainImages.txt
│   ├── vaq2.0.DevImages.txt
│   └── vaq2.0.TestImages.txt
├── models/
│   ├── cnn_lstm.py
│   ├── vit_roberta.py
│   └── llava_model.py
├── utils/
│   ├── data_loader.py
│   └── preprocessing.py
├── train.py
├── evaluate.py
└── README.md
```

## Usage
### Training
1. CNN + LSTM Model:
```bash
python train.py --model cnn_lstm --batch_size 256 --epochs 50
```

2. ViT + RoBERTa Model:
```bash
python train.py --model vit_roberta --batch_size 32 --epochs 50
```

### Inference with LLaVA
```bash
python evaluate.py --model llava --checkpoint llava-1.5-7b-hf
```

## Model Performance
- CNN + LSTM: ~50% accuracy on test set
- ViT + RoBERTa: ~65% accuracy on test set
- LLaVA: Variable performance based on prompt engineering

## Implementation Details
### CNN + LSTM Model
- ResNet18 for image feature extraction
- BiLSTM for text processing
- Feature fusion using concatenation
- Cross-entropy loss for training

### ViT + RoBERTa Model
- Vision Transformer (ViT) for image encoding
- RoBERTa for text encoding
- Advanced feature fusion mechanism
- Fine-tuning support

### LLaVA Model
- Based on large vision-language model
- 7B parameters
- Zero-shot capabilities
- Prompt-based inference