# Formatos de audio admitidos

Usa únicamente `.ogg` (Vorbis). En la práctica el cliente no reconoce `.mp3`
ni `.wav` para estos fines (falla en silencio), así que todo archivo debe
convertirse antes de registrarse.

Cualquier otro formato (`.flac`, `.m4a`, etc.) tampoco se reproduce.

Coloca aquí los archivos y regístralos en `audio_addon.lua` (tabla `CUES`,
clave = ruta relativa con extensión, valor = nombre a mostrar).

Si añades un `.wav`/`.mp3`, conviértelo primero con
`Sounds\convert-to-ogg.ps1` (requiere ffmpeg en PATH:
`winget install --id Gyan.FFmpeg`). Recorre `Sounds\` recursivamente,
genera el `.ogg` junto al original y borra el `.wav`/`.mp3`.
