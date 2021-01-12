#!/bin/bash
#Keep linux End of line conversion.
echo '*********************************'
echo '   Coder Apprentice Environment  '
echo '*********************************'





echo "Immune Repositories: IDevClone, IDevPull, IDevClear"
#Clone Immune Development map repositories.
function IDevClone()
{
	GitClone PyBase
	GitClone PyBaseNlp
	GitClone PySubstitutionMap
}


#Pull Immune Development repositories.
function IDevPull()
{
	GitPull	PyBase
	GitPull	PyBaseNlp
	GitPull	PySubstitutionMap
}


#Clear Immune Development directories.
function IDevClear()
{
	sudo rm -rf	PyBase
	sudo rm -rf	PyBaseNlp
	sudo rm -rf	PySubstitutionMap
}





echo "Immune Development: IDevInstall, IDevConnectSysAli"
#Connect to System Ali.
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


