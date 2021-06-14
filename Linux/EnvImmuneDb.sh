echo "Immune Repositories: IDevClone, IDevPull, IDevClear"
#Clone Immune Development map repositories.
function ImmDbDockerInst()
{
	sudo docker pull arosenfeld/immunedb
}
function ImmDbDockerRun()
{
	sudo docker run -v $HOME/immunedb_share:/share -p 8080:8080 -it arosenfeld/immunedb
}


function ImmDbInstall()
{
	PythonInstall
	RInstall

	
	conda config --add channels defaults
	conda config --add channels bioconda
	conda config --add channels conda-forge
	conda install bwa
}
	