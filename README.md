## Description
Upload/Download files to/from Dropbox with <a target="_blank" href="http://domotiquefacile.fr/jarvis/">Jarvis assistant</a> (base for other plugins).

<img src="https://raw.githubusercontent.com/QuentinCG/jarvis-dropbox/master/presentation.png" width="800">


## Usage
```
You: Upload le fichier d'exemple sur dropbox.
Jarvis: Upload du fichier dans dropbox effectué.
[Fichier README.md copié dans la base du dropbox]

You: Upload le fichier d'exemple sur dropbox discretement.
[Fichier README.md copié dans la base du dropbox]

You: Télécharge le fichier d'exemple depuis dropbox.
Jarvis: Téléchargement du fichier depuis dropbox effectué.
[Fichier README.md copié depuis la base de dropbox vers /tmp/README.md]

You: Télécharge le fichier d'exemple depuis dropbox discrètement.
[Fichier README.md copié depuis la base de dropbox vers /tmp/README.md]
```


## How to install

1) Add this plugin to your <a target="_blank" href="http://domotiquefacile.fr/jarvis/">Jarvis assistant</a> (<a target="_blank" href="http://domotiquefacile.fr/jarvis/content/plugins">more info here</a>): ```./jarvis.sh -p https://github.com/QuentinCG/jarvis-dropbox```

2) Configure the <a target="_blank" href="https://github.com/QuentinCG/jarvis-dropbox/blob/master/config.sh">configuration file</a> to match your requirements: You need a <a target="_blank" href="https://dropbox.com/developers/apps">Dropbox OAuth 2 access token</a>.

3) Use the `jv_pg_dr_upload_file` and `jv_pg_dr_download_file` functions to upload/download files to/from dropbox in any other plugin (check <a target="_blank" href="https://github.com/QuentinCG/jarvis-dropbox/blob/master/fr/commands">command file</a> to have examples).

4) Enjoy


## Author
[Quentin Comte-Gaz](http://quentin.comte-gaz.com/)


## License

This project is under MIT license. This means you can use it as you want (just don't delete the plugin header).


## Contribute

If you want to add more examples or improve the plugin, just create a pull request with proper commit message and right wrapping.
