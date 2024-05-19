#!/bin/bash

# * 
# * File         : git_rime.sh
# * Version      : 0.1
# * CreateTime   : 2024-05-19 14:07:07
# * LastEdit     : 2024-05-19 14:09:13
# * Author       : Knat
# * Licence      : Copyright © 2024 Knat. All Rights Reserved.
# * Desc         : git 同步命令。
# * 

curtime=$(date +%Y%m%d\-%H%M%S)
cd ~/Public/rime-zzdyx.githup/rime-zzdyx/
git add .						#添加所有文件（配合.gitignore）
git status						#查看当前文件变化
read -p "Enter a commit for this submission: " commit	#输入本次注释
git commit -m "$curtime：$commit"			#以时间：注释的格式提交
git push -u origin main					#提交到仓库
