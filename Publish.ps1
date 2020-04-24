
try {
    Push-Location

    Set-Location $PSScriptRoot

    Set-Location ./artifacts

    $packageName = @(Get-ChildItem DextroLevo.Utility.WebTemplate*.nupkg)[0].Name

    nuget push $packageName -source https://nuget.org  

    Write-Host "Boom! There I built all the things" + $packageName
}
catch {
    Write-Host "Bad things, sorry" + $_
}
finally {
    Pop-Location
}
