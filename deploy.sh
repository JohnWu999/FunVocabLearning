#!/bin/bash
# 互动单词学习项目 — 部署脚本
# 使用: ./deploy.sh

set -e

echo "🚀 开始部署..."

# 服务器配置
SERVER="root@118.25.80.19"
KEY="$HOME/.hermes/keys/leonardo.pem"
REMOTE_PATH="/var/www/parent-workshop/interactive-vocabulary/index.html"
LOCAL_FILE="index.html"

# 检查文件存在
if [ ! -f "$LOCAL_FILE" ]; then
    echo "❌ 错误: 未找到 $LOCAL_FILE"
    exit 1
fi

# 检查密钥文件
if [ ! -f "$KEY" ]; then
    echo "❌ 错误: 未找到 SSH 密钥 $KEY"
    exit 1
fi

# 复制文件到服务器
echo "📤 正在上传到服务器..."
scp -i "$KEY" -o StrictHostKeyChecking=no "$LOCAL_FILE" "$SERVER:$REMOTE_PATH"

# 验证部署
STATUS=$(curl -s -o /dev/null -w "%{http_code}" http://118.25.80.19/parent-workshop/interactive-vocabulary/)
if [ "$STATUS" = "200" ]; then
    echo "✅ 部署成功！HTTP $STATUS"
    echo "🔗 访问地址: http://118.25.80.19/parent-workshop/interactive-vocabulary/"
else
    echo "⚠️ 部署可能有问题，HTTP 状态码: $STATUS"
fi
