#!/bin/bash

# * 
# * File         : rsync_rime.sh
# * Version      : 0.2
# * CreateTime   : 2024-05-13 02:30:40
# * LastEdit     : 2024-05-19 14:04:51
# * Author       : Knat
# * Licence      : Copyright © 2024 Knat. All Rights Reserved.
# * Desc         : 用 rsync 工具备份 rime 目录。
# * 

# 源目录和目标目录
rime_path="~/.local/share/fcitx5/rime/"
rimebak_path="~/Public/rime-zzdyx.githup/rime-zzdyx/rime"

#排除清单
exclude_list={"'build/'","'pinyin_simp.userdb/'","'sync/'","'zzdyx_userdict.txt'"}

# 同步命令
cmd="rsync -avvP --exclude=${exclude_list}  ${rime_path}  ${rimebak_path}"

# 用exec命令会切换路径
eval $cmd

# 用git命令查看文件更新情况
git status
