#!/bin/zsh
echo ">> Setting environment variables..."
source bin/.projects
source bin/.vars

echo ">> Installing dotfiles..."
#dotfiles/$dir --> ${HOME}/.*
dotfiles_dirs=(git)
for dir in ${dotfiles_dirs[@]}; do
	for file in ${DOTFILES_PROJECT}/${dir}/.[a-z]*; do
		$EXEC cp -r $file ${HOME}/"$(basename ${file})"
	done
done

#dotfiles/bin/.* ~~> ${HOME}/.*
dotfiles_bin=(bin)
for dir in ${dotfiles_bin[@]}; do
	for file in ${DOTFILES_PROJECT}/${dir}/.[a-z]*; do
		$EXEC ln -vfns $file ${HOME}/"$(basename ${file})"
	done
done

#$dir --> ${HOME}/.$dir
dot_dirs=(vim aws ssh)
for dir in ${dot_dirs[@]}; do
	$EXEC ln -vfns ${DOTFILES_BIN}/$dir ${HOME}/.$dir
done

#$dir --> ${HOME}/$dir
dirs=(python)
for dir in ${dirs[@]}; do
	$EXEC ln -vfns ${DOTFILES_BIN}/$dir ${HOME}/$dir
done

echo ">> Done!"
