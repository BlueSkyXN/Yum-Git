out1 () {
	color=$1
	what=$2
	array=("r" "g" "y" "b" "p" "s" "w")
	for i in `seq 31 37`;do
		if [ ${array[$(($i-31))]} == $color ] ; then
			echo -ne "\e[1;${i}m${what}\e[0m"
			break
		fi
	done
}

out0 () {
	color=$1
	what=$2
	array=("r" "g" "y" "b" "p" "s" "w")
	for i in `seq 31 37`;do
		if [ ${array[$(($i-31))]} == $color ] ; then
			echo -ne "\e[0;${i}m${what}\e[0m"
			break
		fi
	done
}

out0 s "bash <(curl -Ls "https://raw.githubusercontent.com/BlueSkyXN/Yum-Git/main/yum-git.sh")\n"
out0 s "作者：BlueSkyXN 博客：https://www.blueskyxn.com\n"
out0 s "仅支持CENTOS等YUM系列LINUX系统 \n"
while [ 1 -eq 1 ];do
out1 y "------------------------------------\n"
out1 y "|"
out0 y " 请选择软件下载源[脚本源-全球]:   "
out1 y "|\n"
out1 y "|"
out1 b " 1. 官方日本源                    "
out1 y "|\n"
out1 y "|"
out1 b " 2. GITHUB-RAW                    "
out1 y "|\n"
out1 y "|"
out1 b " 3. ORACLE-US-SJ-OSS              "
out1 y "|\n"
out1 y "|"
out1 b " 4. JSDELIVR                      "
out1 y "|\n"
out1 y "|"
out0 y " 请选择软件下载源[脚本源-大陆]:   "
out1 y "|\n"
out1 y "|"
out1 b " 5. 官方日本源                    "
out1 y "|\n"
out1 y "|"
out1 b " 6. GITHUB-RAW                    "
out1 y "|\n"
out1 y "|"
out1 b " 7. ORACLE-US-SJ-OSS              "
out1 y "|\n"
out1 y "|"
out1 b " 8. JSDELIVR                      "
out1 y "|\n"
out1 y "|"
out1 r " 0. 退出                          "
out1 y "|\n"
out1 y "------------------------------------\n"
read id
case $id in
    0)
        break
        ;;
    1)
        bash <(curl -Ls "https://raw.githubusercontent.com/BlueSkyXN/Yum-Git/main/yum-git-off.sh")
        break
        ;;
    2)
        bash <(curl -Ls "https://raw.githubusercontent.com/BlueSkyXN/Yum-Git/main/yum-git-raw.sh")
        break
        ;;
    3)
        bash <(curl -Ls "https://raw.githubusercontent.com/BlueSkyXN/Yum-Git/main/yum-git-oss.sh")
        break
        ;;
    4)
        bash <(curl -Ls "https://raw.githubusercontent.com/BlueSkyXN/Yum-Git/main/yum-git-jsd.sh")
        break
        ;;
    5)
        bash <(curl -Ls "https://cdn.jsdelivr.net/gh/BlueSkyXN/Yum-Git/main/yum-git-off.sh")
        break
        ;;
    6)
        bash <(curl -Ls "https://cdn.jsdelivr.net/gh/BlueSkyXN/Yum-Git/main/yum-git-raw.sh")
        break
        ;;
    7)
        bash <(curl -Ls "https://cdn.jsdelivr.net/gh/BlueSkyXN/Yum-Git/main/yum-git-oss.sh")
        break
        ;;
    8)
        bash <(curl -Ls "https://cdn.jsdelivr.net/gh/BlueSkyXN/Yum-Git/main/yum-git-jsd.sh")
        break
        ;;
esac
done