#!/usr/bin/env bash
chmod +x ci.sh
# 备份数据库与配置
./ci.sh ${BUILD_NUMBER}
# 备份jenkins 配置
jenkins.cli get-job phabricator.backup > phabricator.backup.xml

# 保存备份时状态

# 防止本地没有提交代码
git add .
git commit -a -m "jenkins backup"
# 用分支名与jenkins build对应
git checkout -b build_${BUILD_NUMBER}
git push origin HEAD
# 回到主开发分支
git checkout master
