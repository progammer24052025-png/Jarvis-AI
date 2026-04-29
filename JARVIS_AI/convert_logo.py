# Convert PNG to ICO for JARVIS
from PIL import Image
import os

# Path to your PNG logo
png_path = r"c:\Users\RUDRAKSH PATEL\Desktop\JARVIS(NEW) - Copy\database\learning_data\Jarvis-logo.png"
ico_path = r"c:\Users\RUDRAKSH PATEL\Desktop\JARVIS(NEW) - Copy\frontend\assets\jarvis.ico"

# Open and convert
img = Image.open(png_path)

# Resize to 256x256 if needed
if img.size != (256, 256):
    img = img.resize((256, 256), Image.Resampling.LANCZOS)

# Save as ICO (multiple sizes embedded)
img.save(ico_path, format='ICO', sizes=[(256, 256), (128, 128), (64, 64), (48, 48), (32, 32), (16, 16)])

print(f"✅ Logo converted to ICO: {ico_path}")