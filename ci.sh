#!/usr/bin/env bash
# 对使用 vagrant ssh -c 执行备份的脚本
set -x
# 启动 防止没有启动
vagrant up
# 开始备份
vagrant ssh -c "sudo su -l root -c '/vagrant/phabricator.backup.sh ${1}'"
