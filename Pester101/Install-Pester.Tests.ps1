
# $here = Split-Path -Parent
# $MyInvocation.MyCommand.Path
# $sut =(Split-Path -Leaf
# $MyInvocation.MyCommand.Path).Replace(".Test.",
# ".")
# . "$here\$sut"
$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path).Replace(".Tests.", ".")
 "$here\$sut"

Describe 'Install-Pester' {
    it 'outputs a string' {
        .\Install-Pester | Should -Be 'Working!'
    }
}