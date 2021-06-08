#!/bin/bash

VersionLineStr=`grep -E 's.version.*=' KHKit.podspec` # 获取s.version行
VersionStr=`grep -E -o "\'.*\'"<<<"$VersionLineStr"` # 正则匹配到'1.0.3'
VersionStr=`tr -d "'"<<<"$VersionStr"` # 去掉'

echo "VersionLineStr is ${VersionLineStr}"
echo "VersionStr is ${VersionStr}"

# 版本号自增
NewVersionStr=$VersionStr
[[ "$NewVersionStr" =~ (.*[^0-9])([0-9]+)$ ]] && NewVersionStr="${BASH_REMATCH[1]}$((${BASH_REMATCH[2]} + 1))";

echo "NewVersionStr is ${NewVersionStr}"

# 获取s.version所在行号
LineNumber=`grep -nE 's.version.*=' KHKit.podspec | cut -d : -f1`
echo "LineNumber is ${LineNumber}"

# 修改s.version版本到文件, 替换指定字符串
sed -i "" "${LineNumber}s/${VersionStr}/${NewVersionStr}/g" KHKit.podspec

echo "version modify success, oldversion: ${VersionStr}, newversion: ${NewVersionStr}"

# git 提交代码
git add .
git commit -m"version ${NewVersionStr}"
git pull origin master --tags

git commit -am"version ${NewVersionStr}"
git tag "${NewVersionStr}"
git push origin master --tags

# pod库代码提交
# pod trunk push ./KHKit.podspec --verbose --use-libraries --allow-warnings
pod spec lint KHKit.podspec --verbose --allow-warnings --sources='https://github.com/CocoaPods/Specs.git,https://github.com/keroushe/KHSpecs.git'
pod repo push KHSpecs KHKit.podspec --verbose --allow-warnings