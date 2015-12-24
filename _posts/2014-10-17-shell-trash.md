---
layout: post
title: SHell Trash
tags: trash shell Linux script
categories: linux
---

~~~
#!/bin/bash

readonly trash_home=/tmp/trash

for target in "$@" 
do
	dest=${trash_home}`realpath $target | xargs dirname`
	
	if [ ! -e ${dest} ]; then 
		mkdir -p ${dest};
	fi

	if [ -d $target ]; then
		mv -i $target ${dest};
	elif [ -f $target ]; then
		mv -i $target ${dest};
	fi
done
~~~

在`/etc/profile.d`目录新建文件`trash`，将以上代码粘贴进去，然后赋予其可执行权限。

命令运行效果应该如此：

![trash][trash]

[trash]: {{"/shell-trash.png" | prepend: site.imgrepo }}

