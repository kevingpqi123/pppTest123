#!/bin/sh
MajorVersion=1
MinorVersion=0
FixVersion=0
BK_CI_BUILD_NO=4
WORKSPACE='pwd'
SDK_VERSION=${MajorVersion}.${MinorVersion}.${FixVersion}.${BK_CI_BUILD_NO}
echo ${SDK_VERSION}

#cd ${WORKSPACE}
sed -i "" "s/^  s.version.*/  s.version  = \'${SDK_VERSION}\'/g" pppTest123.podspec

git add .
git commit -m "Push From Landun: update SDK"
git push origin master
git tag -m '${SDK_VERSION}' '${SDK_VERSION}'
#git push --tag
#pod trunk push pppTest123.podspec
