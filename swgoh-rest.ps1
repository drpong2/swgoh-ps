<#
.SYNOPSIS
code to scrape/cache swgoh for character ability referencing/database manipulation

#>
param(

    [string]$uribase = 'https://swgoh.gg/api/',
    [string]$characters = 'characters/',
    [string]$gear = 'gear/',
    [string]$abilities = 'abilities/',
    [string]$index = '1'
)



#initialization
function toon($uribase, $characters, $index){
    $toons = invoke-restmethod -uri ($uribase + $characters)
    $index = 23
    $toonsread = invoke-restmethod -uri ($uribase + $characters + '/' + ($toons[$index].pk))
}

function gear($uribase, $gear, $index){
    $gear = invoke-restmethod -uri ($uribase + $gear)
    $index  = 23
    #below line is incomplete
    $gearread = invoke-restmethod -uri ($uribase + $gear)
}