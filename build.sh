#!/bin/bash

# 이미지 이름과 태그 설정
IMAGE_NAME="my-pytorch-image"
IMAGE_TAG="1.0"

# Docker 이미지 빌드
echo "Docker 이미지를 빌드합니다: $IMAGE_NAME:$IMAGE_TAG"
docker build -t $IMAGE_NAME:$IMAGE_TAG .

# 빌드 결과 확인
if [ $? -eq 0 ]; then
    echo "Docker 이미지 빌드 완료: $IMAGE_NAME:$IMAGE_TAG"
else
    echo "Docker 이미지 빌드 실패" >&2
    exit 1
fi
