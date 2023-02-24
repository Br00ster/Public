<#
Author: Bas Ruijter
Script: AddCustomSPOTheme
(c) Bas Ruijter
#>

$tenantname = $(Write-host "Enter the name of your tenant: " -f Yellow -NoNewline; Read-Host)
$Themename = $(Write-host "Enter the name of your theme: " -f Yellow -NoNewline; Read-Host)

Connect-SPOService -url "https://$tenantname-admin.sharepoint.com"

$themepalette = @{
    "themePrimary" = "#002856";
    "themeLighterAlt" = "#99CEF0";
    "themeLighter" = "#99CEF0"; #ORG a8c0da
    "themeLight" = "#84a5c8";
    "themeTertiary" = "#648cb7";
    "themeSecondary" = "#4975a5";
    "themeDarkAlt" = "#002856";
    "themeDark" = "#1d4d82";
    "themeDarker" = "#0c3d70";
    "neutralLighterAlt" = "#faf9f8";
    "neutralLighter" = "#ece7e3";
    "neutralLight" = "#edebe9";
    "neutralQuaternaryAlt" = "#e1dfdd";
    "neutralQuaternary" = "#d0d0d0";
    "neutralTertiaryAlt" = "#c8c6c4";
    "neutralTertiary" = "#a19f9d";
    "neutralSecondary" = "#605e5c";
    "neutralSecondaryAlt" = "#8a8886";
    "neutralPrimaryAlt" = "#3b3a39";
    "neutralPrimary" = "#323130";
    "neutralDark" = "#201f1e";
    "black" = "#000000";
    "white" = "#ffffff";
}
    
Add-SPOTheme -Identity $themename -Palette $themepalette -IsInverted $false -Overwrite