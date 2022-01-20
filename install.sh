#!/bin/zsh
echo ">> Setting environment variables..."
export DOTFILES_PROJECT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
DOT_VARS=$DOTFILES_PROJECT/src/bin/.vars
source $DOT_VARS

echo ">> Installing dotfiles..."
#dotfiles/$dir --> ${HOME}/.*
dotfiles_dirs=(git)
for dir in ${dotfiles_dirs[@]}; do
	for file in ${DOTFILES_SRC}/${dir}/.[a-z]*; do
		$EXEC cp -r $file ${HOME}/"$(basename ${file})"
	done
done

#dotfiles/bin/.* ~~> ${HOME}/.*
dotfiles_bin=(bin)
for dir in ${dotfiles_bin[@]}; do
	for file in ${DOTFILES_SRC}/${dir}/.[a-z]*; do
		$EXEC ln -s $file ${HOME}/"$(basename ${file})"
	done
done

#$dir --> ${HOME}/.$dir
dot_dirs=(vim aws ssh)
for dir in ${dot_dirs[@]}; do
	$EXEC ln -s ${DOTFILES_BIN}/$dir ${HOME}/.$dir
done

#$dir --> ${HOME}/$dir
dirs=(python)
for dir in ${dirs[@]}; do
	$EXEC ln -s ${DOTFILES_BIN}/$dir ${HOME}/$dir
done

echo ">> Done!"
