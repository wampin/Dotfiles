
New_XML_Doc() {
	docName=$1
	echo "<?xml version='1.0' ecoding='UTF-8'?>" >> $docName.xml
}

Recycle() {
	: '
		Moves FileName file/directory to .recycle
	'
	FileName=$1
	newFileName=$1

	# NO ARGUMENT JUST SHOWS THE CONENTS OF ~/.RECYCLE
	if [ -z $FileName ]; then
		ls -a ~/.recycle/

	# ARGUMENT PROVIDED
	else 
		# CONFIRM USER WANTS TO MOVE THE FILENAME FILE TO THE RECYCLING BIN
		printf "Are you sure you want to move $FileName to the recycling bin? [y/n] "
		read yn # YES/NO BOOLEAN
		if [ "$yn" = 'y' ]; then
			# USED FOR RESOLVING NAME CONFLICTS
			n=1 
			# CHECKS IF THERE IS A NAME CONFLICT IN THE ~/.RECYCLE/
			while [[ -f ~/.recycle/${newFileName} ]] ; do
				n=$(( ${n}+1 ))
				# CREATES THE NEW NAME BY STRIPING THE EXT OFF ADDING $N & ADDING THE EXTENSION BACK
				newFileName="${FileName%.sh}${n}.${FileName##*.}"
			done

			# MOVES FILE TO ~/.RECYCLE/
			printf "Moving $FileName to the ~/.recycle/... \n"
			if [ ${newFileName} == ${FileName} ]; then
				mv "$FileName" -t ~/.recycle/
			else
				printf "Conflicting name found, changing name to %s\n" "$newFileName"
				mv "$FileName" ~/.recycle/$newFileName
			fi
			printf "done!\n"

	# EXIT WITHOUT 
		else
			printf "exit\n"
		fi
	fi
}

Make_Alias() {
	: ' 
		Make_Alias (ma) takes two string arguments, the first being the intended name for a new alias and second the commands the alias will stand for. Make_Alias will check the .bash_aliases file for any duplicate aliases and if it exists it will exit the program with a message indicated a duplicate was found. If no duplicate is found a copy of the .bash_aliases file will be saved as backups/.bash_aliases.bk. Make_Alias uses the sed function to add the alias to .bash_aliases file, since sed has the chance of producing unintended consequences the backup allows for a fall back should Make_Alias produce undesireable results. As mentioned sed will be used to write to the .bash_aliases file, sed will look for address ### NEEDS CATEGORIZED ### and append the alias there. 

		VARAIBLES: USER SUPPLIED DATA
		 aliasName: Stores the intended name of the alias
		 aliasAction: Stores the intended actions of the alias

		VARIABLES: OTHER
		 isAlias: stores the number of records found in .bash_aliases, used to check for existing alias.
	'

# STORING ARGUMENTS WITH MORE READABLE VARIABLE NAME
	aliasName=$1
	aliasAction=$2
	
# CHECKING FOR CONFLICTING ALIAS, OTHERWISE MAKE ALIAS
	printf ""
	printf "Checking for conflicting alias... "
	isAlias=$(egrep -c "^alias $aliasName" ~/.bash_aliases); if [ "$isAlias" -lt 1 ]; then
		printf "No conflicting aliases\n"

	# BACKS UP .BASH_ALIASES
		printf "Making a copy of .bash_aliases, copying to ~/backups... "
		cat ~/.bash_aliases > ~/backups/.bash_aliases.bk
		printf "Done\n"

	# ADDS ALIAS TO THE .BASH_ALIASES
		printf "Adding alias %s to .bash_aliases... " "$aliasName"
		sed -i "/^### NEEDS CATEGORIZED ###$/a alias $aliasName='$aliasAction'" ~/.bash_aliases
		printf "Done\n"
		source ~/.bash_aliases
	else
		printf " Alias already exists\n"
	fi
	printf "Process finished\n"
}

md() {
	dirName=$1
	mkdir $dirName
}

x() {
	fileName=$1
	chmod +x $fileName
}

today() {
		# cho -n "today's date is"
		date +"%A, %B %-d, %Y"
}


wampit() {
	cp -r $1 /mnt/c/wamp64/www/
}
commitlog() {
	# if [ "$1" = "--commits" ]; then
		git reflog | grep 'commit:'
	# fi
}

New_Python_Project() {
	: '
		New Project (np) 
		Checks to see if there is already a project directory for a given project argument name, if there is none it creates a directory, virtual environment, and an alias shortcut.
	'
	argName=$1
	project=~/projects/Python/$argName

	if [ ! -d ""$project"" ]; then
		echo "Starting new project setup: "
		echo " Setting up $project directory"
		mkdir "$project"
		cd "$project"
		echo " creating $project/local directory"
		mkdir local
		echo " creating local alias file"
		touch local/alias.sh
		echo " creating virtual environment"
		virtualenv --python=/usr/bin/python3.6 .
		source ./bin/activate
		printf " Finished setting up virtual environment\n"
		
		# Create an alias under the # PROJECT SHORTCUTS headerin .bash_aliases
		isAlias=$(egrep -c "^alias $argName" ~/.bash_aliases)
		printf "Checking for existing alias\n"
		if [ "$isAlias" -lt 1 ]; then
			printf "Adding alias %s to .bash_aliases\n" "$argName"
			
			# creates a backup of the .bash_aliases in case of unexpected behavior
			cat ~/.bash_aliases > ~/backups/.bash_aliases.bk

			sed -i "/^# PYTHON PROJECT SHORTCUTS/a alias $1='clear; cd ~/projects/Python/$1/; source ./bin/activate; source $LOCAL/alias.sh;'" ~/.bash_aliases
			source ~/.bash_aliases
		else
			printf " Alias already exists\n"
		fi
	else
		printf "%s is already a project\n" "$argName"
	fi
}

gpf() {
	egrep '^def.*$' $1
}

gf() {
	regex=$1
	ls -a | egrep $regex
}

grepls() {
	ls -a | egrep "$1"
}

# Uninstalls/reinstalls specified pip module
rePip(){
	sudo pip uninstall -y $1
	pip install --user $1
}

# REMOVE DIRECTORY COMMAND
remove_directory() {
	dirName=$1 # stores name of target directory
	dirCount=$(ls -Ra $dirName | egrep -c '.') ; dirCount=$(($dirCount-1)) # number of included files
	
	# prompt to confirm deletion
	echo "Are you sure want to delete directory $dirName and it's $dirCount files? ..y/n"
	read response
	if [ "$response" == "y" ] || [ "$response" == "Y" ] ; then
		rm -r $dirName
		echo "$dirName was removed"
	else
		echo "Deletion aborted"
	fi
}
