<?php 

$conn = mysqli_connect('localhost', 'root', '', 'toko_naffstore-app');

function base_url() {
	return "http://localhost/naffstore-app/";
}

function indo_currency($value)
{
    return 'Rp. ' . number_format($value, 0, ",", ".");
}

function indo_date($date) {
	$d = substr($date,8,2);
	$m = substr($date,5,2);
	$y = substr($date,0,4);
	return $d.'/'.$m.'/'.$y;
}

$url = "http://localhost/naffstore-app/";