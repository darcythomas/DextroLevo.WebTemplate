
try {
    Push-Location

    Write-Host $PSScriptRoot
    Set-Location $PSScriptRoot

    Set-Location ./src/DextroLevo.WebTemplate.Nuget

    Remove-Item ($PSScriptRoot + '/artifacts/*.*') -Recurse | Where-Object { ! $_.PSIsContainer }

    dotnet pack -o ($PSScriptRoot + '/artifacts') -c Release

    Write-Host "Boom! There I built all the things"
}
catch {
    Write-Host "Bad things, sorry" + $_
}
finally {
    Pop-Location
}
