<?php
namespace app\index\controller;
class Coupons extends Base
{
    public function index()
    {   
    	$couponRes = db('coupons')->where('del_status', 0)->where('end_date', '>', time())->order('id desc')->select();
        $_uCoupons = db('couponsTaken')->field('coupons_id')->where('uid', session('uid'))->select();
        $uCoupons = array();
        foreach ($_uCoupons as $k => $v) {
            $uCoupons[] = $_uCoupons[$k]['coupons_id'];
        }
        // dump($uCoupons); die;
    	$this->assign([
    		'show_right'=>1,//文章列表和商品列表头部偏移判断
            'couponRes'=>$couponRes,
            'uCoupons' => $uCoupons,
    		]);
        return view();
    }

    public function takeCoupons(){
        $uid = session('uid');
        if($uid){
            $couponsId = input('id');
            $couponsTaken = db('couponsTaken')->where(['uid'=>$uid, 'coupons_id'=>$couponsId])->find();
            $couponsInfo = db('coupons')->find($couponsId);
            $msg = '';
            if($couponsTaken){
                $msg = "<div id='coupons_dialog' class='pb' style='z-index: 100012; width: 550px; top: 53px; left: 668px;'><div class='cboxContent'><div class='pb-hd'><a class='pb-x'>✕</a><span class='pb-title'>领取优惠券</span></div><div class='pb-bd'><div class='pb-ct' style='height: 140px;'>        <span class='success-icon i-icon'></span>        <div class='item-fore'>            <h3 class='red'>领取失败,您已经领取过该券了!每人限领取 1 张</h3>            <div class='txt ftx-03'>买好货送实惠</div>        </div>    </div><div class='tip-box icon-box'><div class='pb-ft'><a class='pb-btn pb-ok pb_close'>关闭</a></div></div></div></div></div><div id='pb-mask' style='position: fixed; width: 100%; height: 100%; top: 0px; left: 0px; opacity: 0.2; overflow: hidden; background-color: rgb(0, 0, 0); z-index: 100011;'></div>";
            }else{
                if($couponsInfo['cp_num'] > $couponsInfo['cp_taken_num']){
                    $data['uid'] = $uid;
                    $data['coupons_id'] = $couponsId;
                    $data['taken_time'] = time();
                    db('couponsTaken')->insert($data);
                    db('coupons')->where('id', $couponsId)->setInc('cp_taken_num');
                    $msg = "<div id='coupons_dialog' class='pb' style='z-index: 100003; width: 550px; top: 71px; left: 668px;'><div class='cboxContent'><div class='pb-hd'><a class='pb-x'>✕</a><span class='pb-title'>领取优惠券</span></div><div class='pb-bd'><div class='pb-ct' style='height: 140px;'>        <span class='success-icon m-icon'></span>        <div class='item-fore'>            <h3>领取成功！感谢您的参与，祝您购物愉快~</h3>            <div class='txt ftx-03'>买好货送实惠</div>        </div>    </div><div class='tip-box icon-box'><div class='pb-ft'><a class='pb-btn pb-ok color_df3134'>立即使用</a><a class='pb-btn pb-cl'>关闭</a></div></div></div></div></div><div id='pb-mask' style='position: fixed; width: 100%; height: 100%; top: 0px; left: 0px; opacity: 0.2; overflow: hidden; background-color: rgb(0, 0, 0); z-index: 100002;'></div>";
                }else{
                    $msg = "<div id='coupons_dialog' class='pb' style='z-index: 100012; width: 550px; top: 53px; left: 668px;'><div class='cboxContent'><div class='pb-hd'><a class='pb-x'>✕</a><span class='pb-title'>领取优惠券</span></div><div class='pb-bd'><div class='pb-ct' style='height: 140px;'>        <span class='success-icon i-icon'></span>        <div class='item-fore'>            <h3 class='red'>对不起，您来晚了，该优惠券已被领光！</h3>            <div class='txt ftx-03'>买好货送实惠</div>        </div>    </div><div class='tip-box icon-box'><div class='pb-ft'><a class='pb-btn pb-ok pb_close'>关闭</a></div></div></div></div></div><div id='pb-mask' style='position: fixed; width: 100%; height: 100%; top: 0px; left: 0px; opacity: 0.2; overflow: hidden; background-color: rgb(0, 0, 0); z-index: 100011;'></div>";
                }
                
            }
        }else{
            $msg = "<div id='coupons_dialog' class='pb' style='z-index: 100012; width: 550px; top: 53px; left: 668px;'><div class='cboxContent'><div class='pb-hd'><a class='pb-x'>✕</a><span class='pb-title'>领取优惠券</span></div><div class='pb-bd'><div class='pb-ct' style='height: 140px;'>        <span class='success-icon i-icon'></span>        <div class='item-fore'>            <h3 class='red'>领取失败,请您先登录网站！</h3>            <div class='txt ftx-03'>买好货送实惠</div>        </div>    </div><div class='tip-box icon-box'><div class='pb-ft'><a class='pb-btn pb-ok pb_close'>关闭</a></div></div></div></div></div><div id='pb-mask' style='position: fixed; width: 100%; height: 100%; top: 0px; left: 0px; opacity: 0.2; overflow: hidden; background-color: rgb(0, 0, 0); z-index: 100011;'></div>";
        }
        

        echo $msg;
    }





}
