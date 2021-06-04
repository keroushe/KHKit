#!/bin/bash

VersionString=`grep -E 's.version.*=' KHKit.podspec`
VersionNumber=`tr -cd 0-9 <<<"$VersionString"`
NewVersionNumber=$(($VersionNumber + 1))
LineNumber=`grep -nE 's.version.*=' KHKit.podspec | cut -d : -f1`

echo "VersionString is ${VersionString}"
echo "VersionNumber is ${VersionNumber}"
echo "NewVersionNumber is ${NewVersionNumber}"
echo "LineNumber is ${LineNumber}"

git add .
git commit -am modification
git pull origin master --tags

sed -i "" "${LineNumber}s/${VersionNumber}/${NewVersionNumber}/g" KHKit.podspec

echo "current version is ${VersionNumber}, new version is ${NewVersionNumber}"
say "current version is ${VersionNumber}, new version is ${NewVersionNumber}"

exit

git commit -am ${NewVersionNumber}
git tag ${NewVersionNumber}
git push origin master --tags
# pod trunk push ./KHKit.podspec --verbose --use-libraries --allow-warnings
pod spec lint KHKit.podspec --verbose --allow-warnings --sources='https://github.com/CocoaPods/Specs.git,https://github.com/keroushe/KHSpecs.git'
pod repo push KHSpecs KHKit.podspec --verbose --allow-warnings