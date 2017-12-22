<?php
namespace app\index\controller;
use think\Controller;
use think\Db;
use think\View;
class Goods extends Controller
{
    public function index()
    {
     return view();
    }
    public function showList()
    {

    	/*return view();*/
      $data=Db::name('sp_goods')->select();
     
      

     $this->assign('data',$data);
      return $this->fetch();
    }
     public function add()
    {
     return view();
    }


    
}
