#!/usr/bin/env bash

# Upload file to dropbox
# $1 (string): File path to get the file to upload (example: "/tmp/README.md")
# $2 (string): File path in dropbox to put the file (example: "README.md")
# $3 (bool, optional): Silent ("True" for no Jarvis response, "False" or no value for Jarvis response)
#
# return (int): 0 if success, 1 if failed
jv_pg_dr_upload_file()
{
  # Send request to dropbox
  local dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
  local result=`python3 $dir/script/dropbox_handler.py --token "$var_jv_pg_dr_oauth2_token" --in "$1" --out "$2" --upload`

  # Show the result to user (if requested)
  if [[ $? -eq 0 ]]; then
    if [[ ! $3 =~ "True" ]]; then
      say "$(jv_pg_dr_lang upload_file_success)"
    fi
    return 0
  else
    if [[ ! $3 =~ "True" ]]; then
      say "$(jv_pg_dr_lang upload_file_failed)"
    fi
  fi

  return 1
}

# Download file from dropbox
# $1 (string): File path in dropbox to get the file to download (example: "README.md")
# $2 (string): File path to put the file (example: "/tmp/README.md")
# $3 (bool, optional): Silent ("True" for no Jarvis response, "False" or no value for Jarvis response)
#
# return (int): 0 if success, 1 if failed
jv_pg_dr_download_file()
{
  # Send request to dropbox
  local dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
  local result=`python3 $dir/script/dropbox_handler.py --token "$var_jv_pg_dr_oauth2_token" --in "$1" --out "$2" --download`

  # Show the result to user (if requested)
  if [[ $? -eq 0 ]]; then
    if [[ ! $3 =~ "True" ]]; then
      say "$(jv_pg_dr_lang download_file_success)"
    fi
    return 0
  else
    if [[ ! $3 =~ "True" ]]; then
      say "$(jv_pg_dr_lang download_file_failed)"
    fi
  fi

  return 1
}
