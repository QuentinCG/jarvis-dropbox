#!/usr/bin/env bash

jv_pg_dr_lang()
{
  case "$1" in
    upload_file_success) echo "Upload du fichier dans dropbox effectué.";;
    upload_file_failed) echo "Impossible d'uploader le fichier dans dropbox...";;
    download_file_success) echo "Téléchargement du fichier depuis dropbox effectué.";;
    download_file_failed) echo "Impossible de télécharger le fichier depuis dropbox...";;

    *) jv_error "Erreur: Clef de traduction '$1' non reconnue. Merci de contacter le concepteur de ce plugin.";;
  esac
}
