<?php
$finfo = finfo_open(FILEINFO_MIME_TYPE);
var_dump(
	finfo_file($finfo, __FILE__)
);
finfo_close($finfo);
