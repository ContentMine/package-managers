# IMPORTANT: Before releasing this package, copy/paste the next 2 lines into PowerShell to remove all comments from this file:
#   $f='c:\path\to\thisFile.ps1'
#   gc $f | ? {$_ -notmatch "^\s*#"} | % {$_ -replace '(^.*?)\s*?[^``]#.*','$1'} | Out-File $f+".~" -en utf8; mv -fo $f+".~" $f

$ErrorActionPreference = 'Stop'; # stop on all errors


$packageName= 'ami' # arbitrary name for the package, used in messages
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/ContentMine/ami/releases/download/v0.2.19-beta/ami-v0.2.19-beta.zip' # download url
$url64      = $url # 64bit URL here or remove - if installer is both, use $url

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE_MSI_OR_MSU' #only one of these: exe, msi, msu
  url           = $url
  url64bit      = $url64

}

Install-ChocolateyZipPackage @packageArgs
Install-BinFile "cmine" "$toolsDir\ami2-0.1-SNAPSHOT\bin\cmine.bat"
Install-BinFile "ami2-gene" "$toolsDir\ami2-0.1-SNAPSHOT\bin\ami2-gene.bat"
Install-BinFile "ami2-identifier" "$toolsDir\ami2-0.1-SNAPSHOT\bin\ami2-identifier.bat"
Install-BinFile "ami2-phylotree" "$toolsDir\ami2-0.1-SNAPSHOT\bin\ami2-phylotree.bat"
Install-BinFile "ami2-regex" "$toolsDir\ami2-0.1-SNAPSHOT\bin\ami2-regex.bat"
Install-BinFile "ami2-sequence" "$toolsDir\ami2-0.1-SNAPSHOT\bin\ami2-sequence.bat"
Install-BinFile "ami2-species" "$toolsDir\ami2-0.1-SNAPSHOT\bin\ami2-species.bat"
Install-BinFile "ami2-word" "$toolsDir\ami2-0.1-SNAPSHOT\bin\ami2-word.bat"
