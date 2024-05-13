#!/bin/bash

# * 
# * File         : rsync_rime.sh
# * Version      : 0.1
# * CreateTime   : 2024-05-13 02:30:40
# * LastEdit     : 2024-05-13 04:41:54
# * Author       : Knat
# * Licence      : Copyright © 2024 Knat All Rights Reserved.
# * Desc         : 用rsync工具备份rime目录。
# * 


# 同步命令
rsync -av --exclude-from='/home/tankb51/.local/share/fcitx5/rime/rsync_exclude.txt'  ~/.local/share/fcitx5/rime/  ~/Public/rime-zzdyx.githup/rime-zzdyx/rime

git status
