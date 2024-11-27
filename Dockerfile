#/bin/bash
# NVIDIA PyTorch 이미지를 기반으로 사용
FROM nvcr.io/nvidia/pytorch:24.03-py3

# 필수 환경 변수 설정 (비대화식 모드)
ENV DEBIAN_FRONTEND=noninteractive

# 패키지 목록 복사
COPY apt-packages.txt /tmp/apt-packages.txt

# 패키지 설치 및 업그레이드
RUN apt update && \
    apt install -y --no-install-recommends build-essential && \
    xargs -a /tmp/apt-packages.txt apt install -y --no-install-recommends && \
    apt upgrade -y && \
    rm -rf /var/lib/apt/lists/*
    
# 한글 폰트 설치 및 캐시 갱신(apt-pacakges.txt에서 fontconfig 있어야 함)
RUN apt update && \
    apt install -y --no-install-recommends fonts-nanum && \
    fc-cache -fv
# 작업 디렉터리 설정
WORKDIR /workspace

# 컨테이너가 종료되지 않도록 유지
CMD ["tail", "-f", "/dev/null"]