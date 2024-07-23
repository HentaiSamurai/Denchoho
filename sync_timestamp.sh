#!/bin/bash

# NTP サーバと時刻同期
ntpdate -q  ntp.nict.jp
#予備、国立天文台
#ntpdate ntp.nict.jp

# 同期日時をログファイルに記録
rm sync_log.txt
sync_time=$(date)
echo "Sync Time: $sync_time" >> sync_log.txt

# コミットメッセージに同期日時を追加
#git add sync_log.txt
#git commit -m "Sync Timestamp: $sync_time"
