set vimrcPath=%CD%\.vimrc
set vsVimScriptsPath=%CD%\VsVimScripts\
copy "%vimrcPath%" "%userprofile%"
mkdir "%userprofile%\VsVimScripts\"
copy "%vsVimScriptsPath%" "%userprofile%\VsVimScripts"