#!/bin/bash
EXP=$1

for var in "$@"
do
    if [[ $var == "--test" ]]; then
        EXP="viewing"
    fi
done

ns-train depth-nerfacto \
    --machine.num-devices 2 \
    --pipeline.model.predict-normals True \
    --experiment-name $EXP \
    --data data/$1 \
    nerfstudio-data


    # --pipeline.model.collider-params near_plane 0.0 far_plane 20.0 \
    # --pipeline.datamanager.train-num-images-to-sample-from 2000 \
    # --load-dir outputs/$1/nerfacto/2023-09-22_144338/nerfstudio_models/ \
