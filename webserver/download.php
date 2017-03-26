<?php
echo "Executing Script with inputs:";

$YTLINK = htmlspecialchars($_POST["ytlink"]);
$FOLDER = escapeshellarg(htmlspecialchars($_POST["foldername"]));

echo "Youtube Link: " . $YTLINK . "\r\n";
echo "Folder Name: " . $FOLDER . "\r\n";

echo "/media/USBHDD1/YOUTUBE_DL/DL_SCRIPT/youtube-dl.sh $YTLINK $FOLDER ";
$output = shell_exec("/media/USBHDD1/YOUTUBE_DL/DL_SCRIPT/youtube-dl.sh " . $YTLINK . " " . $FOLDER . " &");
echo "$output";

?>
