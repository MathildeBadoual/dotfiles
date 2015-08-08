#!/bin/bash -x

backup_dir=backup_$(date +"%Y-%m-%d_%Hh%Mm%Ss")
echo $backup_dir

for f in .vim{rc,}; do
    echo $f;
    if [[ -e ~/$f ]]; then
        mkdir -p $backup_dir;
        mv ~/$f $backup_dir;
    fi;
    ln -sf $(pwd)/$f ~/$f;
done;
