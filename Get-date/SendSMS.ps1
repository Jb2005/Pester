

function GetCurrentWeekNumber {
    $WeekNumber = Get-Date -UFormat %V
    Write-Output $WeekNumber
}



function Get-HireDate {
    param (
        [string]$HireDate
    )
    Write-Output $HireDate
}


function AdProperties {
  
    Get-ADUser -Identity $Identity
    
}

function RenameAccount {
  
    Set-ADUser -Identity $User -Surname
    
}

