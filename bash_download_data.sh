# Install gdown if not already installed
pip install gdown

# Create data directory if it doesn't exist
mkdir -p data

# Download the file using gdown
gdown 1kc6XNqHZJg27KeBuoAoYj70_1rT92191 -O data/dataset.zip

# Unzip the file into the data directory
unzip data/dataset.zip -d data/

# Optional: Remove the zip file after extraction
rm data/dataset.zip

# Create notebooks directory if it doesn't exist
mkdir -p notebooks

# Download entire folder using gdown
gdown https://drive.google.com/drive/folders/1rP8W1skBcLVH0Vxq7ELO40iDmLyVmpDz -O notebooks/ --folder
