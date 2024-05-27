<?php
//if (isset($_POST['mac'])) { echo "1=".$_POST['mac']."\n"; }
//if (isset($_POST['lc'])) { echo "2=".$_POST['lc']."\n"; }
//if (isset($_POST['time'])) { echo "3=".$_POST['time']."\n"; }
////////////////////////////////////////////////////////////////////////////////
function genering_stroke($number) {
$arr = array('a','b','c','d','e','f',
             'g','h','i','j','k','l',
             'm','n','o','p','r','s',
             't','u','v','x','y','z',
             'A','B','C','D','E','F',
             'G','H','I','J','K','L',
             'M','N','O','P','R','S',
             'T','U','V','X','Y','Z',
             '1','2','3','4','5','6',
             '7','8','9','0');
// Генерируем пароль
$pass = "";
for($i = 0; $i < $number; $i++) {
  // Вычисляем случайный индекс массива
  $index = rand(0, count($arr) - 1);
  $pass .= $arr[$index];
  }
return $pass; }
////////////////////////////////////////////////////////////////////////////////
function past_symbol($main_str, $start, $post_str) {
$strochka.= '';
$strochka.= substr($main_str, 0, $start);
$strochka.= $post_str;
$strochka.= substr($main_str, $start + 2, StrLen($main_str)-2-$start);
return $strochka;
}
////////////////////////////////////////////////////////////////////////////////
function past_more_symbol($main_str, $not_integ1, $not_integ2, $post_str, $kolvo) {
$i = 0;
$iskluchenija[0] = 0;
$iskluchenija[1] = 0;
$iskluchenija[2] = 0;
$iskluchenija[3] = 0;
$iskluchenija[4] = 0;

  while($i < $kolvo) {
  $index = rand(2, StrLen($main_str)-2);
    if (($index != ($not_integ1 - 1)) &&
       ($index != $not_integ1) &&
       ($index != ($not_integ1 + 1)) &&
       ($index != ($not_integ2 - 1)) &&
       ($index != $not_integ2) &&
       ($index != ($not_integ2 + 1)) && 
       ($index != StrLen($main_str)) &&
       ($index != (StrLen($main_str)-1)) &&
       ($index != (StrLen($main_str)-2)) &&
       ($index != 0) &&
       ($index != 1) &&
       ($iskluchenija[0] != $index-1) &&
       ($iskluchenija[0] != $index) &&
       ($iskluchenija[0] != $index+1) &&
       ($iskluchenija[1] != $index-1) &&
       ($iskluchenija[1] != $index) &&
       ($iskluchenija[1] != $index+1) &&
       ($iskluchenija[2] != $index-1) &&
       ($iskluchenija[2] != $index) &&
       ($iskluchenija[2] != $index+1) &&
       ($iskluchenija[3] != $index-1) &&
       ($iskluchenija[3] != $index) &&
       ($iskluchenija[3] != $index+1) &&
       ($iskluchenija[4] != $index-1) &&
       ($iskluchenija[4] != $index) &&
       ($iskluchenija[4] != $index+1)) {
               $iskluchenija[$i] = $index;
               $strochka = substr($main_str, 0, $index);
               $strochka.= $post_str;
               $strochka.= substr($main_str, $index + 2, StrLen($main_str)-2-$index);
               $index = rand(2, StrLen($main_str)-2);
               $main_str = $strochka;
               $i++;            
    }
  }
return $strochka;
}
////////////////////////////////////////////////////////////////////////////////
$str = genering_stroke(100);
  // '09.06.2010_12.02.34';
  //
  // after 34+20 symbol need get 02
  // after 10 symbol need get 12
  // 09/2 symbol 06
  //
$after1 = substr($_POST['time'], 17, 2)+20;
$symbol1 = substr($_POST['time'], 14, 2);
$after2 = substr($_POST['time'], 8, 2);
$symbol2 = substr($_POST['time'], 11, 2);
$shoza = explode('.', substr($_POST['time'], 0, 2)/2);
$skokraz = $shoza[0];
$symboal3 = substr($_POST['time'], 3, 2);

$str = past_symbol($str, $after1, $symbol1);
$str = past_symbol($str, $after2, $symbol2);
$str = past_more_symbol($str, $after1, $after2, $symboal3, $skokraz);

echo $str;
/*
echo "after $after1(+20) symbol need get $symbol1<br />\n";
echo "after $after2 symbol need get $symbol2<br />\n";
echo "$skokraz symbol $symboal3<br />\n";
*/

//echo "lvb06r240q12osj06ELlq49t0bclfls9n02qblb406BMs4959blvbbr24024osjbVELll4906bclfls9843Bblb49GBMs495986o";
?>
