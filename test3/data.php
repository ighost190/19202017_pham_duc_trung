<?php 

$quanHn = array(
	6 => 'Quận Ba Đình',
	7 => 'Quận Hoàn Kiếm',
	8 => 'Quận Hai Bà Trưng',
	9 => 'Quận Đống Đa',
	10 => 'Quận Tây Hồ',
);

$quanHcm = array(
	1 => 'Quận 1',
	2 => 'Quận 2',
	3 => 'Quận 4',
	4 => 'Quận 7',
	5 => 'Quận 5',
);


$huyen = array(
	1 => array(
		1 => 'Phuong 11',
		2 => 'Phuong 12',
	),
	2 => array(
		1 => 'Phuong 21',
		2 => 'Phuong 22',
	),
	3 => array(
		1 => 'Phuong 41',
		2 => 'Phuong 42',
	),
	4 => array(
		1 => 'Phuong 71',
		2 => 'Phuong 72',
	),
	5 => array(
		1 => 'Phuong 51',
		2 => 'Phuong 52',
	),
	6 => array(
		1 => 'Ba Dinh 1',
		2 => 'Ba Dinh 2',
	),
	7 => array(
		1 => 'Hoan Kiem 1',
		2 => 'Hoan Kiem 2',
	),
	8 => array(
		1 => 'Hai Bà Trưng 1',
		2 => 'Hai Bà Trưng 2',
	),
	9 => array(
		1 => 'Đống Đa 1',
		2 => 'Đống Đa 2',
	),
	10 => array(
		1 => 'Tây Hồ 1',
		2 => 'Tây Hồ 2',
	)
);

if($_SERVER["REQUEST_METHOD"] == "POST")
{
	$id  	= (int)$_POST["id"];
	$type	= (int)$_POST["idType"];
	if($id>0 && $type>0){
		if($type == 2){
			if($id == 1)
			{
				echo json_encode($quanHcm);
			}
			elseif($id==2)
			{
				echo json_encode($quanHn);
			}
		}
		elseif($type == 3){
			echo json_encode($huyen[$id]);
		}
	}
}
exit;
?>