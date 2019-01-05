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

function uribuilder($uribase, $uriappend, $destination){
    $uri = [System.Uristring]($uribase + $uriappend)
    toon($uri)
}



#initialization
function toon($uri){
    $toons = invoke-restmethod -uri $uri
    #$index = 23
    #$toonsread = invoke-restmethod -uri ($uribase + $characters + '/' + ($toons[$index].pk))
}

function gear($uri){
    $gear = invoke-restmethod -uri $uri
    $index  = 23
    #below line is incomplete
    #$gearread = invoke-restmethod -uri ($uribase + $gear)
}