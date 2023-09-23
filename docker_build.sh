docker build \
    --build-arg CUDA_VERSION=11.8.0 \
    --build-arg CUDA_ARCHITECTURES=86 \
    --build-arg OS_VERSION=22.04 \
    --tag howardkhh/nerfstudio-86 \
    --file Dockerfile .