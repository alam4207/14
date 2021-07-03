#!/usr/bin/env bash
## Author: SuperManito
## Modified: 2021-6-18
## 添加新的脚本

## 当前脚本清单（以脚本名前缀排序）
##############################  京  东  商  城  ##############################
## 列表格式： | 脚本名 | 活动名 | 备注内容 |

## 短期或长期活动：
# jd_try.js                    京东试用
# jd_sqdyj.js                  省钱大赢家翻翻乐             （柠檬版）
# jd_sq.js                     省钱大赢家翻翻乐获取邀请码
# jd_wsdlb.js                  柠檬我是大老板农场           （需要种水果）
# jd_SplitRedPacket.js         天降红包                     （默认助力第一个账号）
# jd_ddnc_farmpark.js          东东乐园
# jd_necklace.js               点点券
# jx_cfdtx.js                  京喜财富岛提现
# jx_mc_coin.js                京喜牧场收集金币
# jx_mc_emptycabbage.js        京喜牧场清空白菜
# Andy_sendBeans.js            送豆得豆
# ddo_pk.js                    京享值PK
# long_half_redrain.js         半点红包雨
# long_super_redrain.js        整点红包雨
# star_dreamFactory_tuan.js    京喜工厂开团

## 短期或长期活动：
# jd_try.js                    京东试用
# jd_wsdlb.js                  柠檬我是大老板农场           （需要种水果）
# jd_SplitRedPacket.js         天降红包                     （默认助力第一个账号）
# jd_ddnc_farmpark.js          东东乐园
# jd_qqxing.js                 QQ星系牧场                    (每次都要手动打开才能跑)
# jd_europeancup.js            狂欢欧洲杯                    (默认第一个号给作者助力，后续号给第一个号助力)
# jd_hwsx.js                   柠檬众筹好物上新
# jx_cfdtx.js                  京喜财富岛提现
# jx_mc_coin.js                京喜牧场收集金币
# jx_mc_emptycabbage.js        京喜牧场清空白菜
# Andy_sendBeans.js            送豆得豆
# chinnkarahoi_jd_bookshop.js  口袋书店(修复版)
# ddo_pk.js                    京享值PK
# long_half_redrain.js         半点红包雨
# long_super_redrain.js        整点红包雨

## Python 脚本
## 执行 python 脚本需要先手动安装环境，进容器执行懒人一键命令： apk --no-cache add -f python3 && cd /jd/scripts && pip3 install requests
# jd_zjd.py                    赚京豆                        (号多才有用，默认给账号1助力，可填写助力全局变量 export zlzh=['','',''] ，值为pt_pin或用户名，将其填入单引号中)


##############################  京  东  到  家  ##############################
## jddj_fruit.js                京东到家 果园任务
## jddj_fruit_collectWater.js   京东到家 果园水车
## jddj_fruit_code.js           京东到家 果园获取互助码
## jddj_getPoints.js            京东到家 庄园领水滴
## jddj_bean.js                 京东到家 鲜豆任务
## jddj_plantBeans.js           京东到家 鲜豆庄园

## 京东到家需开通 "到家果园" 活动，自行挑选水果种植跟东东农场类似
## 不想薅这个APP的羊毛就忽略这些脚本，顺便把定时任务注释掉

## 京东到家账号环境变量（必填）：
## export JDDJ_CKPATH="/jd/scripts/jdCookie.js"       必须指定路径否则会报错




cat /etc/hosts | grep "raw.githubusercontent.com" -q
if [ $? -ne 0 ]; then
  echo "199.232.28.133 raw.githubusercontent.com" >>/etc/hosts
  echo "199.232.68.133 raw.githubusercontent.com" >>/etc/hosts
  echo "185.199.108.133 raw.githubusercontent.com" >>/etc/hosts
  echo "185.199.109.133 raw.githubusercontent.com" >>/etc/hosts
  echo "185.199.110.133 raw.githubusercontent.com" >>/etc/hosts
  echo "185.199.111.133 raw.githubusercontent.com" >>/etc/hosts
fi
PROXY_URL=https://ghproxy.com/


##############################  作  者  昵  称  （必填）  ##############################
# 使用空格隔开
#author_list="Public LongZhuZhu adolf  passerby-b  panghu QuanX jx me ddo jiulan star261  panghu"
# 搬运大佬脚本开始



##############################  作  者  脚  本  地  址  URL  （必填）  ##############################
# 例如：https://raw.sevencdn.com/whyour/hundun/master/quanx/jx_nc.js
# 1.从作者库中随意挑选一个脚本地址，每个作者的地址添加一个即可，无须重复添加
# 2.将地址最后的 “脚本名称+后缀” 剪切到下一个变量里（my_scripts_list_xxx）

#scripts_base_url_1=${PROXY_URL}https://raw.githubusercontent.com/panghu999/panghu/master/

author_list="Public ZCY01 passerby-b LongZhuZhu Wenmoux panghu MoPoQAQ Andy ddo star261 sheel QuanX"

## 京喜财富岛z'z'z'z'z'z'z'z'z'z'z'z'z'z'z'z'z'z'z
scripts_base_url_1=https://gitee.com/SuperManito/scripts/raw/master/
my_scripts_list_1="jx_cfdtx.js jdJxncTokens.js"

## 京东试用
scripts_base_url_2=https://gitee.com/SuperManito/scripts/raw/master/
my_scripts_list_2="jd_try.js"

## 京东到家
scripts_base_url_3=${PROXY_URL}https://raw.githubusercontent.com/passerby-b/JDDJ/main/
my_scripts_list_3="jddj_fruit.js jddj_fruit_collectWater.js jddj_bean.js jddj_plantBeans.js jddj_getPoints.js jddj_fruit_code.js jddj_cookie.js"

## 龙王
scripts_base_url_4=${PROXY_URL}https://raw.githubusercontent.com/longzhuzhu/nianyu/main/qx/
my_scripts_list_4="long_half_redrain.js long_super_redrain.js"

## Wenmoux
scripts_base_url_5=${PROXY_URL}https://raw.githubusercontent.com/Wenmoux/scripts/wen/jd/
my_scripts_list_5="jd_SplitRedPacket.js jd_ddnc_farmpark.js jd_qqxing.js chinnkarahoi_jd_bookshop.js jd_europeancup.js"

## 柠檬/panghu
scripts_base_url_6=${PROXY_URL}https://raw.githubusercontent.com/panghu999/panghu/master/
my_scripts_list_6="jd_wsdlb.js jd_hwsx.js"

## moposmall
scripts_base_url_7=${PROXY_URL}https://raw.githubusercontent.com/moposmall/Script/main/Me/
my_scripts_list_7="jx_mc_coin.js jx_mc_emptycabbage.js"

## Andy
scripts_base_url_8=${PROXY_URL}https://raw.githubusercontent.com/zsm85887823/AndyJD/main/own/
my_scripts_list_8="Andy_sendBeans.js"

## ddo
scripts_base_url_9=${PROXY_URL}https://raw.githubusercontent.com/hyzaw/scripts/main/
my_scripts_list_9="ddo_pk.js"

## 皮卡丘
scripts_base_url_10=${PROXY_URL}https://raw.githubusercontent.com/curtinlv/JD-Script/main/
my_scripts_list_10="jd_zjd.py"

scripts_base_url_11=${PROXY_URL}"https://raw.githubusercontent.com/photonmang/quantumultX/master/JDscripts/"
my_scripts_list_11="jd_necklace.js"

## 添加更多脚本地址URL示例：scripts_base_url_3=https://raw.sevencdn.com/whyour/hundun/master/quanx/

##############################  作  者  脚  本  名  称  （必填）  ##############################
# 将相应作者的脚本填写到以下变量中
#my_scripts_list_1="jd_sqdyj.js jd_sq.js"


##############################  随  机  函  数  ##############################
rand() {
  min=$1
  max=$(($2 - $min + 1))
  num=$(cat /proc/sys/kernel/random/uuid | cksum | awk -F ' ' '{print $1}')
  echo $(($num % $max + $min))
}
cd ${ShellDir}
index=1
for author in $author_list; do
  ##  echo -e "开始下载 $author 的活动脚本："
  echo -e "开始下载第三方活动脚本："
  echo -e ''
  # 下载my_scripts_list中的每个js文件，重命名增加前缀"作者昵称_"，增加后缀".new"
  eval scripts_list=\$my_scripts_list_${index}
  #echo $scripts_list
  eval url_list=\$scripts_base_url_${index}
  #echo $url_list
  for js in $scripts_list; do
    eval url=$url_list$js
    echo $url
    eval name=$js
    echo $name

    if [ ${js} = "long_half_redrain.js" ]; then
      eval name="jd_half_redrain.js "
    elif [ ${js} = "long_hby_lottery.js" ]; then
      eval name="jd_hby_lottery.js"
    elif [ ${js} = "Andy_sendBeans.js" ]; then
      eval name="jd_sendBeans.js"
    elif [ ${js} = "long_super_redrain.js" ]; then
      eval name="jd_superbox.js "
    elif [ ${js} = "jd_jxmc.js" ]; then
      eval name="jx_pasture.js"
    elif [ ${js} = "jd_zoo.js" ]; then
      eval name="jd_cute_animals.js"
    elif [ ${js} = "jd_zooCollect.js" ]; then
      eval name="jd_cute_animalsCollect.js"
    elif [ ${js} = "jd_zooMap.js" ]; then
      eval name="jd_cute_animalsMap.js"
    elif [ ${js} = "jd_star_shop.js" ]; then
      eval name="jd_star_store.js"
    elif [ ${js} = "adolf_flp.js" ]; then
      eval name="jd_flp.js"
    elif [ ${js} = "adolf_oneplus.js" ]; then
      eval name="jd_oneplus.js"
    elif [ ${js} = "adolf_superbox.js" ]; then
      eval name="jd_superbox.js"

    elif [ ${js} = "zooLongzhou.js" ]; then
      eval name="jd_Longzhou.js"
    elif [ ${js} = "zooSupershophf.js" ]; then
      eval name="jd_Supershophf.js"
    elif [ ${js} = "zooElecsport.js" ]; then
      eval name="jd_Elecsport.js"
    elif [ ${js} = "ddo_pk.js" ]; then
      eval name="jd_pk.js"
    elif [ ${js} = "star_dreamFactory_tuan.js" ]; then
      eval name="jd_star_dreamFactory_tuan.js"
    else
      eval name=$js
    fi









    wget -q --no-check-certificate $url -O scripts/$name.new







    # 如果上一步下载没问题，才去掉后缀".new"，如果上一步下载有问题，就保留之前正常下载的版本
    # 随机添加个cron到crontab.list
    if [ $? -eq 0 ]; then
      mv -f scripts/$name.new scripts/$name
      echo -e "更新 $name 完成...\n"
      croname=$(echo "$name" | awk -F\. '{print $1}')
      script_date=$(cat scripts/$name | grep "http" | awk '{if($1~/^[0-59]/) print $1,$2,$3,$4,$5}' | sort | uniq | head -n 1)
      if [ -z "${script_date}" ]; then
        cron_min=$(rand 1 59)
        cron_hour=$(rand 7 9)
        [ $(grep -c "$croname" ${ListCron}) -eq 0 ] && sed -i "/hangup/a${cron_min} ${cron_hour} * * * bash /opt/jd/jd.sh $croname" ${ListCron}
      else
        [ $(grep -c "$croname" ${ListCron}) -eq 0 ] && sed -i "/hangup/a${script_date} bash /opt/jd/jd.sh $croname" ${ListCron}
      fi
    else
      [ -f scripts/$name.new ] && rm -f scripts/$name.new
      echo -e "更新 $name 失败，使用上一次正常的版本...\n"
    fi
  done
  index=$(($index + 1))
done

##############################  删  除  失  效  的  活  动  脚  本  ##############################
## 删除旧版本失效的活动示例： rm -rf ${ScriptsDir}/jd_test.js
rm -rf ${ScriptsDir}/long_*
rm -rf ${ScriptsDir}/jddj_*
rm -rf ${ScriptsDir}/zoo*
rm -rf ${ScriptsDir}/ddo_pk*
rm -rf ${ScriptsDir}/zy_*
rm -rf ${ScriptsDir}/jx_shop_follow_sku.js
rm -rf ${ScriptsDir}/jd_xtg.js
rm -rf ${ScriptsDir}/jd_xtg_help.js
rm -rf ${ScriptsDir}/jd_joy.js
rm -rf ${ScriptsDir}/jd_joy_reward.js
rm -rf ${ScriptsDir}/*jd_enen.js







