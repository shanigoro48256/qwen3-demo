# Qwen3 Demo

このリポジトリは、Qwen3モデルを活用したデモ環境を構築するためのDocker構成を提供します。

---

## 🔧 セットアップ手順

### 1. リポジトリをクローン

```bash
git clone https://github.com/shanigoro48256/qwen3-demo.git
cd qwen3-demo
````

### 2. Dockerコンテナをビルド・起動

以下のコマンドでDockerコンテナをビルド・起動します：

```bash
docker compose up
```

---

## 🌐 Jupyter Notebook の利用方法

1. Docker起動後、ローカルPCのブラウザを開き以下にアクセス：

```
http://localhost:8888
```

※ インスタンス側のポート8888がローカルの8888に転送されている必要があります。

2. `demo.ipynb` を開く。

3. 各コードセルを順に実行すると、Qwen3を使ったデモが実行されます。

---

## 📁 ディレクトリ構成（例）

```
qwen3-demo/
├── docker-compose.yml      # Jupyter環境を含むDocker構成
├── Dockerfile              # 環境構築用Dockerfile
├── demo.ipynb              # デモ用Jupyter Notebook
├── README.md               # このファイル
└── その他ソースコード等...
```

---

## 📄 ライセンスについて

このリポジトリ自体はMITライセンス等を付与していません。
**Qwen3モデルおよび関連ファイルのライセンスは、提供元（Alibaba Cloudなど）のライセンス規約に従ってください。**
ご利用前に、必ずモデル提供元の[ライセンス文書](https://huggingface.co/Qwen)をご確認ください。

---
