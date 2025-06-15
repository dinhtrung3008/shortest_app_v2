#!/bin/bash
set -e

# Kiểm tra số lượng tham số
if [ "$#" -ne 3 ]; then
  echo "👉 Trước tiên, hãy add các file vào Staged Changes bằng \"git add .\" hoặc chỉ add những file cần commit"
  
  echo "👉 Sau đó, làm theo hướng dẫn phía dưới"

  echo "👉 Cách dùng: sh.gitpr.sh \"commit message\" current_branch target_branch"

  echo "👉 Ví dụ: sh.gitpr.sh \"fix: update modal UI\" trungcao develop"
  exit 1
fi

COMMIT_MESSAGE="$1"
CURRENT_BRANCH="$2"
TARGET_BRANCH="$3"

# Flutter clean và pub get
# flutter clean
# flutter pub get
# echo "✅ Flutter cleaned successfully."

# Commit code
echo "📌 Committing with message: $COMMIT_MESSAGE"
git commit -m "$COMMIT_MESSAGE"

# Chuyển sang nhánh target (ví dụ: develop) và pull mới nhất
echo "➡️ Switching to '$TARGET_BRANCH'"
git checkout "$TARGET_BRANCH"
git pull origin "$TARGET_BRANCH"

# Quay lại nhánh hiện tại (ví dụ: trungcao) và merge
echo "⬅️ Switching back to '$CURRENT_BRANCH' and merging"
git checkout "$CURRENT_BRANCH"
git merge "$TARGET_BRANCH"

# Push lên remote
echo "🚀 Pushing '$CURRENT_BRANCH' to remote"
git push origin "$CURRENT_BRANCH"

# Gợi ý tạo PR (nếu dùng GitHub CLI)
if command -v gh &> /dev/null; then
  echo "📢 Bạn có thể tạo PR bằng lệnh:"
  echo "   gh pr create --base $TARGET_BRANCH --head $CURRENT_BRANCH --title \"$COMMIT_MESSAGE\" --body \"Auto PR from script\""
fi

echo "✅ Merge branch '$TARGET_BRANCH' into '$CURRENT_BRANCH' và push thành công."