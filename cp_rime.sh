#!/bin/bash

# * 
# * File         : cp_rime.sh
# * Version      : 0.1
# * CreateTime   : 2024-05-10 11:43:16
# * LastEdit     : 2024-05-13 04:41:13
# * Author       : Knat
# * Licence      : Copyright © 2024 Knat All Rights Reserved.
# * Desc         : 拷贝需要的rime配置文件到此目录。
# * 


# 拷贝
cp -r ~/.local/share/fcitx5/rime/* ~/Public/rime-zzdyx.githup/rime-zzdyx/rime/

# 清理不需要上传的文件

rm -rf ~/Public/rime-zzdyx.githup/rime-zzdyx/rime/build
rm -rf ~/Public/rime-zzdyx.githup/rime-zzdyx/rime/sync
rm -rf ~/Public/rime-zzdyx.githup/rime-zzdyx/rime/pinyin_simp.userdb
#rm -rf ~/Public/rime-zzdyx.githup/rime-zzdyx/rime/zzdyx_userdict.txt

# git status
git status
