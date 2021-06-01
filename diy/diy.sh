#!/usr/bin/env bash
## Author: SuperManito
## Modified: 2021-6-1
## 添加柠檬脚本,添加京喜工厂脚本
cat /etc/hosts | grep "raw.githubusercontent.com" -q
if [ $? -ne 0 ]; then
  echo "199.232.28.133 raw.githubusercontent.com" >>/etc/hosts
  echo "199.232.68.133 raw.githubusercontent.com" >>/etc/hosts
  echo "185.199.108.133 raw.githubusercontent.com" >>/etc/hosts
  echo "185.199.109.133 raw.githubusercontent.com" >>/etc/hosts
  echo "185.199.110.133 raw.githubusercontent.com" >>/etc/hosts
  echo "185.199.111.133 raw.githubusercontent.com" >>/etc/hosts
fi

##############################  作  者  昵  称  （必填）  ##############################
# 使用空格隔开
author_list="Public LongZhuZhu adolf  passerby-b  panghu QuanX jx"

##############################  作  者  脚  本  地  址  URL  （必填）  ##############################
# 例如：https://raw.sevencdn.com/whyour/hundun/master/quanx/jx_nc.js
# 1.从作者库中随意挑选一个脚本地址，每个作者的地址添加一个即可，无须重复添加
# 2.将地址最后的 “脚本名称+后缀” 剪切到下一个变量里（my_scripts_list_xxx）

scripts_base_url_1=https://gitee.com/SuperManito/scripts/raw/master/
scripts_base_url_2=https://gitee.com/mjf521/longzhuzhu/raw/main/qx/
scripts_base_url_3=https://gitee.com/mjf521/dust/raw/dust/normal/
scripts_base_url_4=https://gitee.com/mjf521/dust/raw/dust/member/
scripts_base_url_5=https://gitee.com/mjf521/ningmeng/raw/master/
scripts_base_url_6=https://gitee.com/mjf521/QuanX/raw/master/scripts/
scripts_base_url_7=https://gitee.com/mjf521/jd28/raw/master/
## 添加更多脚本地址URL示例：scripts_base_url_3=https://raw.sevencdn.com/whyour/hundun/master/quanx/

##############################  作  者  脚  本  名  称  （必填）  ##############################
# 将相应作者的脚本填写到以下变量中
my_scripts_list_1="jd_paopao.js jx_cfdtx.js"
my_scripts_list_2="jd_half_redrain.js jd_super_redrain.js"
my_scripts_list_3="jx_jxhb.js jx_star.js jx_superbox.js jx_oppo.js jx_urge.js jx_inter_shop_sign.js jx_shop_follow_sku.js jx_shop_lottery.js jx_pk.js jx_martin.js jx_mi.js jx_newInteraction.js"
my_scripts_list_4="jx_flp.js jx_oneplus.js jx_pasture.js"
my_scripts_list_5="jd_ppdz.js"
my_scripts_list_6="jd_party_night.js"
my_scripts_list_7="jx_freshgoods.js	jd_bean_change.js	jd_bean_home.js	jd_bean_sign.js	jd_beauty.js	jd_blueCoin.js	jd_blueCoin20.js	jd_bookshop.js	jd_car.js	jd_car_exchange.js	jd_cash.js	jd_cash_exchange.js	jd_cfd.js	jd_city.js	jd_club_lottery.js	jd_crazy_joy.js	jd_crazy_joy_coin.js	jd_daily_egg.js	jd_daily_lottery.js	jd_daydlt.js	jd_ddaixiaochu.js	jd_dpqd.js	jd_dpqd2.js	jd_dreamFactory.js	jd_entertainment.js	jd_ETIP.js	jd_factory.js	jd_family.js	jd_fanslove.js	jd_friend.js	jd_fruit.js	jd_get_share_code.js	jd_getFanslove.js	jd_global.js	jd_gold_creator.js	jd_health.js	jd_health_collect.js	jd_jdzz.js	jd_jintie.js	jd_jintie_wx.js	jd_joy.js	jd_joy_feedPets.js	jd_joy_reward.js	jd_joy_run.js	jd_joy_run1.js	jd_joy_steal.js	jd_joy_zdy.js	jd_joy500.js	jd_joywyw.js	jd_jump.js	jd_jump_jump.js	jd_jxd.js	jd_jxfactory.js	jd_jxFactoryCreateTuan.js	jd_jxnc.js	jd_jxnc_s.js	jd_kd.js	jd_live.js	jd_live_lottery_social.js	jd_live_redrain.js	jd_lotteryMachine.js	jd_market_lottery.js	jd_moneyTree.js	jd_monk_pasture.js	jd_ms.js	jd_necklace.js	jd_Newsyj.js	jd_nzmh.js	jd_opencard.js	jd_party_night.js	jd_pet.js	jd_petTreasureBox.js	jd_pigPet.js	jd_plantBean.js	jd_plus_bean.js	jd_ppdz.js	jd_price.js	jd_rankingList.js	jd_redPacket.js	jd_s5g.js	jd_sgmh.js	jd_shake.js	jd_shop.js	jd_shop_follow_sku.js	jd_shop_lottery.js	jd_ShopSign.js	jd_skyworth.js	jd_small_home.js	jd_speed.js	jd_speed_redpocke.js	jd_speed_sign.js	jd_split.js	jd_super_box.js	jd_super_redrain.js	jd_superMarket.js	jd_sxj.js	jd_syj.js	jd_tcl.js	jd_try.js	jd_unbind.js	jd_unsubscribe.js	jd_updateBeanHome.js	jd_updateRed.js	JD_USER_AGENTS.js	jd_wechat_sign.js	jd_xtg.js	jd_xtg_help.js	jd_zjd.js	jd_zjd_tuan.js	jd_zoo.js	jd_zooCollect.js	jd_zz.json	jd_zzupdate.js	jdczf.js	jdtqz.js	jdupdatecfd.js	jx_cfdnew.js	jx_cfdtx.js	jx_sign.js	jx_tokens.js	z_carnivalcity.js	z_shop_captain.js	jx_no.js		jx_carnivalcity.js jx_shop_captain.js"
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
rm -rf ${ScriptsDir}/adolf*