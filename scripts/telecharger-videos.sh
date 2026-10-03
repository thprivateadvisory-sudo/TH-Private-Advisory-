#!/usr/bin/env bash
# Télécharge les vidéos d'illustration (Mixkit, licence libre, auteur : 21aerials)
# pour les héberger directement sur le site. Sans ces fichiers, le site charge
# automatiquement les vidéos depuis le CDN de Mixkit.
set -euo pipefail
cd "$(dirname "$0")/../assets/video"
dl() { curl -fL --retry 3 -o "$1" "$2"; }
dl paris-seine-nuit.mp4          https://assets.mixkit.co/videos/31652/31652-1080.mp4
dl paris-seine-nuit-720.mp4      https://assets.mixkit.co/videos/31652/31652-720.mp4
dl paris-tour-eiffel.mp4         https://assets.mixkit.co/videos/31670/31670-1080.mp4
dl paris-tour-eiffel-720.mp4     https://assets.mixkit.co/videos/31670/31670-720.mp4
ls -lh
