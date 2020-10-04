
.\Set-File.ps1

describe 'Set-File changes the file provided' {
    $testFilePath = 'TestDrive:\testFile.txt'
    Add-Content -Path $testFilePath -Value 'foo bar foo bar' -NoNewLine
    .\Set-File.ps1 -FilePath $testFilePath
    it 'replaces foo with bar' {
    (Get-Content -Path $testFilePath -Raw) | should -Be 'bar bar bar bar'
    }
    }