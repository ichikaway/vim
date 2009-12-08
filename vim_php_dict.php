<?php

$functions = get_defined_functions();
$constants = get_defined_constants();

sort($functions['internal']);
echo implode("\n",$functions['internal']);

$const_keys = array_keys($constants);
sort($const_keys);
echo implode("\n",$const_keys);
?>
