# Dockerfile Example

이 레포지토리는 PyTorch GPU 환경에서 작업할 수 있는 Docker 컨테이너를 쉽게 설정할 수 있도록 구성되었습니다.

---

## 빠른 시작 🚀

1. **이 레포지토리 클론**
   ```bash
   git clone https://github.com/doh0106/Dockerfile-Example.git
   cd Dockerfile-Example
   ```

2. **Docker 이미지 빌드**
   ```bash
   docker build -t my-pytorch-image:1.0 .
   ```

3. **컨테이너 실행**
   ```bash
   bash run.sh
   ```

4. **컨테이너 접속**
   ```bash
   docker exec -it my-container bash
   ```

---

### 폴더 구조 🗂️

```
Dockerfile-Example/
├── Dockerfile
├── config/
│   └── apt-packages.txt
└── volume/
```

---

## 추가 정보

- Dockerfile은 NVIDIA PyTorch 이미지를 기반으로 GPU를 활성화하여 작동합니다.
- `config/apt-packages.txt`를 통해 추가 패키지를 손쉽게 설치할 수 있습니다.
