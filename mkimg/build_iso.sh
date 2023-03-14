sudo docker buildx build -t alpine:iso .

mkdir -p ./iso
sudo rm -rf ./iso/*
id=$(sudo docker create alpine:iso)
sudo docker cp $id:/home/build/iso/. ./iso
sudo docker rm -v $id

