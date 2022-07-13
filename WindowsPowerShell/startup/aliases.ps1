function .. { cd .. }
function ... { cd ../.. }
function .... { cd ../../.. }
function ..... { cd ../../../.. }
function ...... { cd ../../../../.. }
function ....... { cd ../../../../../.. }

function cdl($dir) { cd $dir; ls; }

function user { set-location "$Env:USERPROFILE" }
function docs { set-location "$Env:USERPROFILE\Documents" }
