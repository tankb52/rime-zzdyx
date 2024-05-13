#!/bin/bash

# * 
# * File         : rsync_rime.sh
# * Version      : 0.2
# * CreateTime   : 2024-05-13 02:30:40
# * LastEdit     : 2024-05-14 03:23:03
# * Author       : Knat
# * Licence      : Copyright © 2024 Knat. All Rights Reserved.
# * Desc         : 用 rsync 工具备份 rime 目录。
# * 

#排除清单
exclude_list={"'build/'","'pinyin_simp.userdb/'","'sync/'","'zzdyx_userdict.txt'"}

# 同步命令
cmd="rsync -avP --exclude=$exclude_list ~/.local/share/fcitx5/rime/  ~/Public/rime-zzdyx.githup/rime-zzdyx/rime"

# 用exec命令会切换路径
eval $cmd

# 用git命令查看文件更新情况
git status
