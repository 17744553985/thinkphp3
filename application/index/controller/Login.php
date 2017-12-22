<?php 
namespace app\index\controller;
use think\Controller;
use \think\Request;
use \app\index\model\user;
use think\Db;
use think\View;
use \think\Validate;
use \think\Session;
class Login extends Controller{

     public function index(){
      
    return view('index');
   }
   public function register(){
   	 $data['name']= Request::instance()->param('user_name');
     $data['password']= Request::instance()->param('user_passwd');
     $data['password']=$data['password'];
     Db::name('user')->insert($data);
     $userId = Db::name('user')->getLastInsID();
     if($userId){
      $this->success('successful!!!',url('login'));//此处是成功跳转界面
     }else{
     	$this->error('failed!!!');
     }


   }
     public function login(){
    
       return view('login');
     }

     public function logins(){
         	
	     $data['name'] = Request::instance()->param('user_name');
	     $data['pwds'] = Request::instance()->param('user_passwd');

	     $validate = new Validate([
			    'name'  => 'require|max:25',
			    'pwds' => 'number|between:1,124',
			]);
			
		if (!$validate->check($data)) {
		    return $validate->getError();
		}
	     $pwd=Db::name('user')->where((['name'=>$data['name'],'password'=>$data['pwds']]))->value('id');
;
      
	      if($pwd){
	      	  Session::set('id',$pwd);

            $this->success('登录成功', 'index/index');
	      	
	      }else{
	      	$this->error('failed!!!');
	      }
	      	
     }


     public function logout(){
       Session::delete('id');
       $this->success('退出成功', 'login/login');

     }
}





