# Convierte todo .wav/.mp3 dentro de Sounds\ a .ogg (formato que WoW reconoce siempre) y borra el original.
# Requiere ffmpeg en PATH: winget install --id Gyan.FFmpeg
Get-ChildItem -Path $PSScriptRoot -Recurse -Include *.wav, *.mp3 | ForEach-Object {
    $ogg = [System.IO.Path]::ChangeExtension($_.FullName, ".ogg")
    ffmpeg -y -i $_.FullName -c:a libvorbis -q:a 5 $ogg
    if ($LASTEXITCODE -eq 0) {
        Remove-Item $_.FullName
        Write-Output "OK: $($_.Name) -> $(Split-Path $ogg -Leaf)"
    } else {
        Write-Output "FALLO: $($_.Name)"
    }
}
