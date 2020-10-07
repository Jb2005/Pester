
. .\SendSMS.ps1


<#
    Testing the function GetCurrentWeekNumbe
#>
Describe 'Get CurrentWeek Number' {
    it 'outputs the week number' {
        GetCurrentWeekNumber | Should be 41
}

<#
    Testing the function Get-HireDate
#>
Describe 'Gets the Hire Date'{
    it 'outputs new hire start date' {
        Get-HireDate -Hiredate 06/10/2020 | Should be 06/10/2020
    }
}

<#
    Testing the function AdProperties
#>
Describe 'Mock AD user account' {
    mock -CommandName 'Get-ADUser' -MockWith {
        
        [PSCustomObject]@{
        Surname = 'Entrapta'
        Name    = 'Princess Entrapta'
        UserPrincipalName   = ''
        GivenName   = 'Princess '
        Enabled     = 'False'
        SamAccountName  = 'PEntrapta'
        Objectclass = 'user'
        }
    }
    it 'returns requested AD properties' {
        $Users = AdProperties
        $Users.Name | Should be 'Princess Entrapta'
        $Users.Enabled | Should be False
    }

}
}

<#
    Testing the function RenameAccount
#>
###################################################

Describe 'Rename An AD account' {
    mock -CommandName 'Set-ADUser' -MockWith {
        
        [PSCustomObject]@{
        Surname = 'Entrapta'
        Name    = 'Princess Entrapta'
        UserPrincipalName   = ''
        GivenName   = 'Princess '
        Enabled     = 'False'
        SamAccountName  = 'PEntrapta'
        Objectclass = 'user'
        }
    }
    it 'ReName Account to Hordak' {
        $Users = RenameAccount -Surname Hordak
        $Users.Surname | Should be Hodak
        $Users.Enabled | Should be False
    }

}

<#
    Testing the function
#>