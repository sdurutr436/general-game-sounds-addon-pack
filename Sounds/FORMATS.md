# Formatos de audio admitidos

El cliente de WoW (y por tanto `PlaySoundFile`/LibSharedMedia) sólo reproduce:

- `.ogg` (Vorbis) — recomendado, el que usa EllesmereUI para sus sonidos propios
- `.mp3`
- `.wav`

Cualquier otro formato (`.flac`, `.m4a`, etc.) no se reproduce y falla en silencio.

Coloca aquí los archivos y regístralos en `audio_addon.lua` (tabla `CUES`,
clave = nombre de archivo sin extensión, valor = nombre a mostrar).
