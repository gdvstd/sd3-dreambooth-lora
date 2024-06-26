export MODEL_NAME="stabilityai/stable-diffusion-3-medium-diffusers"
export INSTANCE_DIR="/root/sehyun/text2storyboard/dataset/all"
export OUTPUT_DIR="trained-sd3"

python train_dreambooth_sd3.py \
  --pretrained_model_name_or_path=$MODEL_NAME  \
  --instance_data_dir=$INSTANCE_DIR \
  --output_dir=$OUTPUT_DIR \
  --mixed_precision="fp16" \
  --instance_prompt="a storyboard image in sks style" \
  --with_prior_preservation \
  --class_data_dir="/root/sehyun/class_images" \
  --class_prompt="a storyboard image" \
  --report_to="wandb" \
  --resolution=1024 \
  --train_batch_size=1 \
  --sample_batch_size=2 \
  --gradient_accumulation_steps=4 \
  --learning_rate=1e-4 \
  --report_to="wandb" \
  --lr_scheduler="constant" \
  --lr_warmup_steps=0 \
  --max_train_steps=500 \
  --validation_prompt="A photo of sks dog in a bucket" \
  --validation_epochs=25 \
  --seed="0" \
#   --local_rank=0
#   --push_to_hub