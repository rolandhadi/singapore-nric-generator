<?php
public function generate_singapore_nric($doc_type = "NRIC")
{
    $first = 'S';
    if (doc_type == "FIN")
    {
        $first = "G";
    }

    $age = 8;
    if ($first != 'S' && $first != 'T' && $first != 'F' && $first != 'G')
    {
        return ['status' => 'error', 'message' => 'Invalid prefix'];
    }

    $chars = str_split(str_pad(floor(rand(1, 9999999)) , 7, '0'));
    $chars[0] = $age;

    $output = $first . implode($chars);

    $chars[0] *= 2;
    $chars[1] *= 7;
    $chars[2] *= 6;
    $chars[3] *= 5;
    $chars[4] *= 4;
    $chars[5] *= 3;
    $chars[6] *= 2;

    $sum = 0;
    for ($i = 0;$i <= 6;$i++)
    {
        $sum += $chars[$i];
    }

    $offset = ($first == "T" || $first == "G") ? 4 : 0;
    $temp = ($offset + $sum) % 11;
    $st = ["J", "Z", "I", "H", "G", "F", "E", "D", "C", "B", "A"];
    $fg = ["X", "W", "U", "T", "R", "Q", "P", "N", "M", "L", "K"];

    $theAlpha = "";
    if ($first == "S" || $first == "T")
    {
        $theAlpha = $st[$temp];
    }
    else if ($first == "F" || $first == "G")
    {
        $theAlpha = $fg[$temp];
    }
    else $theAlpha = "?";

    return $output . $theAlpha;
}