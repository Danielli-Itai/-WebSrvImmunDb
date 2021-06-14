#!/bin/bash
#Keep linux End of line conversion.
echo '*********************************'
echo '   Immune Development Environment  '
echo '*********************************'






echo "IDevClone - Clone Immune Development map repositories."
function IDevClone()
{
	GitClone PyBase
	GitClone PyBaseNlp
	GitClone PySubstitutionMap
}

echo "IDevReset - Reset Immune Development map repositories."
function IDevReset()
{
	GitReset PyBase
	GitReset PyBaseNlp
	GitReset PySubstitutionMap
	
	echo "Resetting current folder"
	sudo git reset --hard
	sudo git pull
}


#Pull Immune Development repositories.
function IDevPull()
{
	GitPull	PyBase
	GitPull	PyBaseNlp
	GitPull	PySubstitutionMap
	
	echo "Pulling current folder"
	sudo git  pull
}


#Clear Immune Development directories.
function IDevClear()
{
	sudo rm -rf	./PyBase
	sudo rm -rf	./PyBaseNlp
	sudo rm -rf	./PySubstitutionMap
}





echo "IDevConnectHive, IDevConnectSysAli - SSH connection to servers"
#Connect to System Ali.
function IDevConnectHive()
{
	ssh –p 22 idanielli@hive01.haifa.ac.il
}
function IDevConnectSysAli()
{
	ssh itaid@systemAli.haifa.ac.il
}

#Install Immune Development environment.
function IDevInstall()
{
	IDevClear
	IDevClone
	
	MySqlInstall
	
	source PySubstitutionMap/Linux/Requirements.sh
}





echo "Substitution map: SubMapRunTest, SubMapRunCount, SubMapRunProcess"
function SubMapRunTest()
{
	python3 PySubstitutionMap/SubMappingApp.py test
}

function SubMapRunCount()
{
	python3 PySubstitutionMap/SubMappingApp.py count
}

function SubMapRunProcess()
{
	python3 PySubstitutionMap/SubMappingApp.py process
}


