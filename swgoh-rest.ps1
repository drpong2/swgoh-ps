<#
.SYNOPSIS
code to scrape/cache swgoh for character ability referencing/database manipulation

#>

$uribase = 'https://swgoh.gg/api/'
$characters = 'characters'



#initialization
$toons = invoke-restmethod -uri ($uribase + $characters)
