# MapillaryDocker
This docker container contains the Mapillary Tools, along with FFMPEG.

## Tags

2 tags are available: latest and sab
latest is meant to be run with tty and interactive, while sab contains ShellInABox and can be run normally

## Examples

    docker run -t -i --name mapillary robinvanderlinde/mapillary:latest

	docker run --name mapillary -p 4200:4200 robinvanderlinde/mapillary:sab