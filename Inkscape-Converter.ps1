
<#
.SYNOPSIS
    File Converter using Inkscape
.DESCRIPTION
    Converts image files to inkscape

.PARAMETER source
    Source directory to scan for files.
.PARAMETER target
    Target directory to store your output files.
.PARAMETER configpath
    Specify a path to a custom config file.
.PARAMETER all
    Output all supported file types.
.PARAMETER help
    Display this help message.
.PARAMETER height
    Define heigt of output.
.PARAMETER width
    Define width of output.

.INPUTS
    System.String
.OUTPUTS
    System.String[]
.NOTES
    Run Winfetch without arguments to view core functionality.
#>


[CmdletBinding()]
param(
    [Alias("s")][String]$source=".\",
    [Alias("t")][String]$target,
    [Alias("i")][String]$input,
    [Alias("o")][String]$output,
    [Alias("a")][Switch]$all=$false,
    [Alias("w")][Int]$width=1080,
    [Alias("h")][Int]$height,
    [Switch]$help
)


# ===== DISPLAY HELP =====
if ($help) {
    if (Get-Command -Name less -ErrorAction Ignore) {
        Get-Help ($MyInvocation.MyCommand.Definition) -Full | less
    } else {
        Get-Help ($MyInvocation.MyCommand.Definition) -Full
    }
    exit 0
}



if ($all){
    $target="svg","png","pdf"
}


$target

# Get-ChildItem $s | ?{$_.Name -Match $input } | %{inkscape -i $_.Name -h $h -o $o}

