crate table t_user(
'id' int(1000) not null auto_increment default "id",
'name' varchar(20) not null,
'password' int(32) not null,
'phone' int(11),
's_id' int,
'c_id' int,
'sex' enum('男','女'),
'updtime' data,
 primary key "id"
)ENGINE=MyISAM DEFAULT CHARSET=gbk;