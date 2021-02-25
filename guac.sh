#!/bin/zsh

# URL to master branch of a public repository, viewing as raw file.
# URL para o branch master de um repositório público, visualizando sem formatação.
MY_REPO="https://raw.githubusercontent.com/rkrocha/guac_script/master/"

# These are the files to be downloaded from MY_REPO. Each of these names is concatenated to the end of MY_REPO, forming a working address.
# Esses são os arquivos que serão baixados de MY_REPO. Cada um desses nomes é concatenado ao fim de MY_REPO, formando um endereço utilizável.
MY_FILES=".zshrc .zsh_aliases .vimrc ssh_init.sh"

curl_file ()
{
	ls -1a | grep -q "$1" || curl -s "$MY_REPO$1" -o ~/"$1"
	grep -q "^404: Not Found" "$1" && rm "$1" 1>/dev/null && echo "Curling file "$1" returned error 404: Not Found in repository"
}

cd ~

for i in $MY_FILES
do
	curl_file "$i"
done

ls -1a | grep -q "\.ssh" || (mkdir .ssh && echo "Don't forget to copy your SSH keys and run ssh_init.sh!")

exec zsh
