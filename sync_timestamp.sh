#!/bin/bash

# ntpサーバへの問い合わせ記録を書き込む
ntpdate -q  ntp.nict.jp | tee sync_log.txt
#予備、国立天文台
#ntpdate -q  s2csntp.miz.nao.ac.jp | tee sync_log.txt

# コミットメッセージに同期日時を追加
git add sync_log.txt
#git commit -m "Sync Timestamp: $sync_time"
