# ベースイメージ(CUDA)の指定
FROM nvidia/cuda:12.1.0-cudnn8-devel-ubuntu22.04

# 必要なパッケージをインストール
RUN apt-get update && apt-get install -y python3-pip python3-venv git nano curl

# Ollamaをインストール
RUN curl -fsSL https://ollama.com/install.sh | sh

# 作業ディレクトリを設定
WORKDIR /app

# アプリケーションコードをコピー
COPY . /app

# Python仮想環境の作成
RUN python3 -m venv /app/.venv

# 仮想環境をアクティベートするコマンドを.bashrcに追加
RUN echo "source /app/.venv/bin/activate" >> /root/.bashrc

# JupyterLabのインストール
RUN /app/.venv/bin/pip install Jupyter jupyterlab

# PyTorchのインストール
RUN /app/.venv/bin/pip install torch==2.4.1 torchvision==0.19.1 torchaudio==2.4.1 --index-url https://download.pytorch.org/whl/cu121

# Transformers関連のインストール
RUN /app/.venv/bin/pip install transformers==4.51.0 accelerate bitsandbytes

RUN /app/.venv/bin/pip install -U "qwen-agent[gui,rag,code_interpreter,mcp]"

# コンテナの起動時にbashを実行
CMD ["/bin/bash"]
