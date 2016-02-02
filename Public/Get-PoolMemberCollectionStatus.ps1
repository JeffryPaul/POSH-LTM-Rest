Function Get-PoolMemberCollectionStatus {<#.SYNOPSIS    Get the status of all members of the specified pool#>    param(        [Parameter(Mandatory=$true)]$PoolName,        [Parameter(Mandatory=$true)]$F5session    )    $PoolMembers = Get-PoolMemberCollection -PoolName $PoolName -F5session $F5session | Select-Object -Property name,session,state    $PoolMembers}