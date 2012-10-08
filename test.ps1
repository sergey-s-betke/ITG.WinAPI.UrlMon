[CmdletBinding(
	SupportsShouldProcess=$true,
	ConfirmImpact="Medium"
)]
param ()

. `
	(Join-Path `
        -Path ( ( [System.IO.FileInfo] ( $MyInvocation.MyCommand.Path ) ).Directory ) `
        -ChildPath 'ITG.PrepareModulesEnv.ps1' `
    ) `
;

Import-Module 'ITG.WinAPI.UrlMon' -Force;

'test\logo.jpg' `
, 'test\logo2.jpg' `
| % {
    (join-path `
        -path ( ( [System.IO.FileInfo] ( $myinvocation.mycommand.path ) ).directory ) `
        -childPath $_ `
    ) `
} `
| Get-MIME -ErrorAction Continue `
;
#>