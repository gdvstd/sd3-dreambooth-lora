git clone https://github.com/huggingface/diffusers
cd diffusers
pip install -e .
cd examples/dreambooth
pip install -r requirements_sd3.txt
pip install wandb bitsandbytes
wandb login