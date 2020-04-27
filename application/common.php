<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006-2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: 流年 <liu21st@gmail.com>
// +----------------------------------------------------------------------

// 应用公共文件
//type  0:加密  1:解密
function encryption($value,$type=0){
   // $key=md5('www.tongpankt.com');
   $key=config('encryption_key');
   if($type == 0){//加密
      return str_replace('=', '', base64_encode($value ^ $key));
   }else{
      $value=base64_decode($value);
      return $value ^ $key;
   }
}

/**
 * 二维数组按照指定键值去重  tongpankt.com
 * @param $arr 需要去重的二维数组
 * @param $key 需要去重所根据的索引
 * @return mixed
 */
function assoc_unique($arr, $key)
{
    $tmp_arr = array();
    foreach($arr as $k => $v) {
        if(in_array($v[$key],$tmp_arr)) {  //搜索$v[$key]是否在$tmp_arr数组中存在，若存在返回true
            unset($arr[$k]);
        } else {
            $tmp_arr[] = $v[$key];
        }
    }
    sort($arr); //sort函数对数组进行排序
    return $arr;
}

//邮件发送函数
//发送邮件

//图片资源处理函数
function my_scandir($dir=UEDITOR){
   $files=array();
   $dir_list=scandir($dir);
   foreach ($dir_list as $file) {
      if($file != '.' && $file != '..'){
         if(is_dir($dir.'/'.$file)){
            $files[$file]=my_scandir($dir.'/'.$file);
         }else{
            $files[]=$dir.'/'.$file;
         }
      }
   }
   return $files;
}
//字符串截取

function cut_str($sourcestr,$cutlength)  

{  

   $returnstr='';  

   $i=0;  

   $n=0;  

   $str_length=strlen($sourcestr);//字符串的字节数  

   while (($n<$cutlength) and ($i<=$str_length))  

   {  

      $temp_str=substr($sourcestr,$i,1);  

      $ascnum=Ord($temp_str);//得到字符串中第$i位字符的ascii码  

      if ($ascnum>=224)    //如果ASCII位高与224，  

      {  

$returnstr=$returnstr.substr($sourcestr,$i,3); //根据UTF-8编码规范，将3个连续的字符计为单个字符          

         $i=$i+3;            //实际Byte计为3  

         $n++;            //字串长度计1  

      }  

      elseif ($ascnum>=192) //如果ASCII位高与192，  

      {  

         $returnstr=$returnstr.substr($sourcestr,$i,2); //根据UTF-8编码规范，将2个连续的字符计为单个字符  

         $i=$i+2;            //实际Byte计为2  

         $n++;            //字串长度计1  

      }  

      elseif ($ascnum>=65 && $ascnum<=90) //如果是大写字母，  

      {  

         $returnstr=$returnstr.substr($sourcestr,$i,1);  

         $i=$i+1;            //实际的Byte数仍计1个  

         $n++;            //但考虑整体美观，大写字母计成一个高位字符  

      }  

      else                //其他情况下，包括小写字母和半角标点符号，  

      {  

         $returnstr=$returnstr.substr($sourcestr,$i,1);  

         $i=$i+1;            //实际的Byte数计1个  

         $n=$n+0.5;        //小写字母和半角标点等与半个高位字符宽...  

      }  

   }  

         if ($str_length>$i){  

          $returnstr = $returnstr . "...";//超过长度时在尾处加上省略号  

      }  

    return $returnstr;  

} 
