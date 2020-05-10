<?php
$parser = xml_parser_create();
$xml = <<<XML
<note>
<script/>
<to>Tove</to>
<from>Jani</from>
<heading>Reminder</heading>
<body>Don't forget me this weekend!</body>
</note>
XML;
var_dump(
	xml_parse($parser, $xml)
);
