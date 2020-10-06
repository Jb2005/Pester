
. .\Get-week.ps1

Describe 'Get-Week' {
    it 'outputs the week number' {
        Get-week | Should be 41
}
}
