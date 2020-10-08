

function SendPassword {
    param (
        [Parameter(Mandatory)]
        [string]$StartWeekNumber
    )

    $CurrentWeekNumber = Get-Date -UFormat %V

    if ($StartWeekNumber -eq $CurrentWeekNumber) {
        Write-Output "Send Passwrd"
    }else {
        Write-Output "Do not Send Password"
    }


    
}

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
    param(
        [string]$FirstName
    )
  
    Set-ADUser -Identity $User -Surname $FirstName
    
}

