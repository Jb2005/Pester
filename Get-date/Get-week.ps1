

function Get-week {
    $WeekNumber = Get-Date -UFormat %V
    Write-Output $WeekNumber
}
Get-week
