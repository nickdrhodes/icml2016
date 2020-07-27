# Download script for the torch caption data and pretrained text encoders
# Downloads the necessary resources for testing including the pretrained generators
# If you want to do training, the actual images will not be downloaded by this script
# you can follow the instructions in the repo, and adjust the CONFIG file accordingly
pip3 install gdown

mkdir data/pretrained

# CAPTION DATA
# Birds caption data in Torch format
gdown https://drive.google.com/uc?id=0B0ywwgffWnLLLUc2WHYzM0Q2eWc
# Flowers caption data in Torch format
gdown https://drive.google.com/uc?id=0B0ywwgffWnLLMl9uOU91MV80cVU
# COCO caption data in Torch format
gdown https://drive.google.com/uc?id=0B0ywwgffWnLLamltREhDRjlaT3M




# PRETRAINED TEXT ENCODERS
# Birds text encoders
gdown https://drive.google.com/uc?id=0B0ywwgffWnLLU0F3UHA3NzFTNEE
mv lm_sje_nc4_cub_hybrid_gru18_a1_c512_0.00070_1_10_trainvalids.txt_iter30000.t7 data/pretrained/cub_pretrained_encoder.t7
# Flowers text encoders
gdown https://drive.google.com/uc?id=0B0ywwgffWnLLZUt0UmQ1LU1oWlU
mv lm_sje_flowers_c10_hybrid_0.00070_1_10_trainvalids.txt_iter16400.t7 data/pretrained/flowers_pretrained_encoder.t7
# COCO text encoders
gdown https://drive.google.com/uc?id=0B0ywwgffWnLLeVNmVVV6OHBDUFE
mv coco_gru18_bs64_cls0.5_ngf128_ndf128_a10_c512_80_net_T.t7 data/pretrained/coco_pretrained_encoder.t7


# PRETRAINED GENERATORS
# Birds GAN-INT-CLS pretrained generator checkpoints
gdown https://drive.google.com/uc?id=0B0ywwgffWnLLSW84ZXRjdXhObzQ
mv cub_v2_nc4_cls0.5_int1.0_ngf128_ndf64_600_net_G.t7 checkpoints/

gdown https://drive.google.com/uc?id=0B0ywwgffWnLLV0U4MGwzZ2JKT3c
mv flowers_v2_nc1_cls0.5_int1.0_ngf128_ndf128_200_net_G.t7 checkpoints/

gdown https://drive.google.com/uc?id=0B0ywwgffWnLLT0JqcEFrOG1iVVk
mv coco_fast_t70_nc3_nt128_nz100_bs64_cls0.5_ngf196_ndf196_100_net_G.t7 checkpoints/

tar -xzf cub_icml.tar.gz -C data
tar -xzf flowers_icml.tar.gz -C data
tar -xzf coco_icml.tar.gz -C data

rm cub_icml.tar.gz
rm flowers_icml.tar.gz
rm coco_icml.tar.gz
