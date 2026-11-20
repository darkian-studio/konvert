# Konvert

Android app for file conversion tools: PDF to/from EPUB, text, Markdown and
DOCX, plus video to audio and timestamped transcripts.

This is the app shell: navigation between Home, Settings and the (currently
empty) Tool screen. Each conversion tool gets its screen when it is built.

## Build

GitHub Actions pins Flutter 3.47.7 and builds a release APK on every push and
pull request. On pushes to `main` the APK is published to the `v<pubspec version>`
GitHub Release, replacing the asset on subsequent pushes of the same version.
