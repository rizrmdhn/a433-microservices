# Membuat Docker image dari Dockerfile dengan nama item-app dan tag v1
docker build -t item-app:v1 .

# Melihat daftar image yang tersimpan di lokal
docker images

# Mengubah nama image agar sesuai dengan format GitHub Container Registry (ghcr.io/username/image-name:tag)
docker tag item-app:v1 ghcr.io/rizrmdhn/item-app:v1

# Login ke GitHub Container Registry via Terminal menggunakan Personal Access Token (PAT)
docker login ghcr.io -u rizrmdhn

# Mengunggah image ke GitHub Container Registry
docker push ghcr.io/rizrmdhn/item-app:v1
