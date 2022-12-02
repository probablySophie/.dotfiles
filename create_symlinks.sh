#!/bin/bash

SOURCE_DIR=${HOME}"/.dotfiles/files/"
HOME_DIR=${HOME}"/"

printf "Copying from "${SOURCE_DIR}"\n"

create_link() { # takes source_dir dest_dir file_name

	printf ${3}"\t" # display the filename
	
	if [ ! ${#3} -ge 8 ]; then # line everything up
		printf "\t"
	fi
	
	# Is the source_file valid
	if [ ! -f ${1}${3} ] && [ ! -d ${1}${3} ]; then
 		
 		printf "⨯\tSource file does not exist\t${1}${3}\n"
 		return
 		
	fi
	
	# Is there already something there?
	if [ -f ${2}${3} ] || [ -d ${2}${3} ]; then
 		
 		printf "⨯\tDestination file already exists!\n"
 		return
 		
	fi
	
	ln -s ${1}${3} ${2}${3} # all is good.  Make the link
	printf "✓\n"
	
}

create_link ${SOURCE_DIR} ${HOME_DIR} ".bashrc"

create_link ${SOURCE_DIR}".config/" ${HOME_DIR}".config/" "bash"

create_link ${SOURCE_DIR}".config/" ${HOME_DIR}".config/" "mc"

create_link ${SOURCE_DIR}".config/" ${HOME_DIR}".config/" "terminator"

create_link ${SOURCE_DIR}".config/" ${HOME_DIR}".config/" "starship.toml"

#ln -s ${SOURCE_DIR}".bashrc" ${HOME}	# .bashrc

#ln -s ${SOURCE_DIR}".config/bash" ${HOME}"/.config"




printf "Done!"
