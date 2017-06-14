#
#
if (-Not (Get-Command "docker" -errorAction SilentlyContinue))
{
    echo "Docker not installed, the 'docker' command is required to run this scrip."
    exit
}

$path = "~\.ssh\id_rsa"
$id_rsa = Get-Content -Path $path
$directorypath = (Resolve-Path .\).Path
docker run --rm -e id_rsa=${id_rsa} -it -v ${directorypath}:/opt/project -w /opt/project jstormes/node $args
#docker run --rm -e id_rsa=${id_rsa} -it -v ${directorypath}:/opt/project -w /opt/project test $args