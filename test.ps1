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

Import-Module `
	(Join-Path `
        -Path ( Split-Path -Path ( $MyInvocation.MyCommand.Path ) ) `
        -ChildPath 'ITG.WinAPI.UrlMon' `
    ) `
    -Force `
	-PassThru `
| Get-Readme -OutDefaultFile;

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

# демонстрация свойства, добавленного через types.ps1xml 
$a = ( [System.IO.FileInfo] 'test\logo3.jpg' );
$a.ContentType;