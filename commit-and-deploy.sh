#!/bin/bash
# 一键提交并部署
# 使用: ./commit-and-deploy.sh "提交说明"

set -e

# 默认提交信息
MESSAGE="${1:-更新内容 $(date +%Y%m%d-%H%M)}"

echo "🚀 开始提交并部署..."
echo "📝 提交信息: $MESSAGE"

# Git 提交和推送
echo "📥 Git add..."
git add -A

echo "📥 Git commit..."
git commit -m "$MESSAGE"

echo "📥 Git push..."
git push origin main

# 执行部署
echo "🚀 开始部署到服务器..."
./deploy.sh

echo "🎉 全部完成！"
