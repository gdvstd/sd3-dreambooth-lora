export MODEL_NAME="stabilityai/stable-diffusion-3-medium-diffusers"
export INSTANCE_DIR="/root/sehyun/style_dataset/dessin_style"
export OUTPUT_DIR="dessin-style-sketch-sd3-lora"

accelerate launch train_dreambooth_lora_sd3.py \
  --pretrained_model_name_or_path=$MODEL_NAME  \
  --instance_data_dir=$INSTANCE_DIR \
  --output_dir=$OUTPUT_DIR \
  --mixed_precision="fp16" \
  --instance_prompt="sks sketch" \
  --report_to="wandb" \
  --resolution=512 \
  --train_batch_size=1 \
  --sample_batch_size=1 \
  --gradient_accumulation_steps=4 \
  --learning_rate=5e-6 \
  --report_to="wandb" \
  --lr_scheduler="constant" \
  --lr_warmup_steps=0 \
  --max_train_steps=10000 \
  --checkpointing_steps=1000 \
  --seed="0" \
  --push_to_hub \
  # --use_8bit_adam \
  # --gradient_checkpointing \
  # --with_prior_preservation \
  # --class_data_dir="/root/sehyun/class_images_sketch" \
  # --class_prompt="sketch" \
  # --num_class_images=353 \
  # --validation_prompt="A storyboard image of man walking in the park in sks style" \
  # --validation_epochs=1 \