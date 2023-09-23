USER=howardkhh
docker run --gpus all \
            -v /warehouse/$USER/:/warehouse/$USER \
            -v /home/$USER/nerfstudio/:/home/$USER/nerfstudio/ \
            -v /home/$USER/.cache/:/home/$USER/.cache/ \
            -p 9487:7007 \
            --rm \
            -it \
            --shm-size=12gb \
            --name $USER-nerfstudio-86 \
            howardkhh/nerfstudio-86