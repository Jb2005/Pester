
. .\SendSMS.ps1

Describe 'Get CurrentWeek Number' {
    it 'outputs the week number' {
        GetCurrentWeekNumber | Should be 41
}

Describe 'Gets the Hire Date'{
    it 'outputs new hire start date' {
        Get-HireDate -Hiredate 06/10/2020 | Should be 06/10/2020
    }
}

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
