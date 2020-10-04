
# $here = Split-Path -Parent $MyInvocation.MyCommand.Path
# $sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path).Replace(".Tests.", ".")
#  "$here\$sut"

.\Install-Pester.ps1
Describe 'Install-Pester' {
    it 'outputs a string' {
        .\Install-Pester | Should -Be 'Working!'
    }
}