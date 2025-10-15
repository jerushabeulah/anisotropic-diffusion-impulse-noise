# Anisotropic Diffusion Based Impulse Noise Removal from Remote Sensing Images

This project was part of my undergraduate research and focuses on removing impulse (salt-and-pepper) noise from remote sensing images using an anisotropic diffusion approach. It demonstrates how image clarity can be improved while preserving important edges and details.

##  Aim
To design and test an image-processing algorithm that removes impulse noise while keeping image edges sharp, using anisotropic diffusion and median filtering techniques.

##  Background
Impulse noise (also known as salt-and-pepper noise) often appears in satellite or remote sensing images due to transmission errors or sensor faults.  
Anisotropic diffusion is a technique that smooths images based on their structure — it reduces noise in flat areas but keeps edges clear by controlling how much each pixel diffuses with its neighbours.

##  What this project includes
- MATLAB or Python source code for anisotropic diffusion filtering  
- Sample remote-sensing images (before and after denoising)  
- Performance metrics such as **PSNR** and **SSIM** to show quality improvement  
- A short report and reference to the published IEEE paper

##  How to run
### MATLAB version
1. Open the file `anisotropic_diffusion.m` in MATLAB.  
2. Place your test image (for example `noisy_image.png`) inside the `data/` folder.  
3. Change the filename in the code to match your image name.  
4. Run the script — the clean image and graphs will appear in the `results/` folder.

