#!/bin/bash

echo "删除本地AaronSwift库"

pod repo remove swiftRequest

echo "本地AaronSwift库——已删除"

echo "添加远程仓库到本地"

pod repo add swiftRequest https://github.com/wangzhi8910/swiftRequest.git

echo "添加远程仓库完成"

echo "发布新版本"

pod repo push swiftRequest swiftRequest.podspec --allow-warnings

echo "发布完成"

if [ -d "~/.cocoapods/repos/swiftRequest/swiftRequest/Classes/" ]; then
	echo "包含Class文件夹，正在删除"
	rm -rf ~/.cocoapods/repos/swiftRequest/swiftRequest/Classes
	echo "删除Class文件夹完成"
fi

if [ -d "~/.cocoapods/repos/swiftRequest/swiftRequest/Assets/" ]; then
	echo "包含Assets文件夹"
        rm -rf ~/.cocoapods/repos/swiftRequest/swiftRequest/Assets
	echo "删除Assets文件夹完成"
fi

