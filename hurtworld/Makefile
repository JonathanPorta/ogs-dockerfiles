all: build run

build:
	docker build -t jonathanporta/ogs-hurtworld .

# --net="host" is not great, but the virtual networking is not performant.
run:
	docker run\
		--net="host"\
		-v $(pwd)/logs:/logs/\
		-p 12871:12871/udp\
		-p 12881:12881/udp\
		-it jonathanporta/ogs-hurtworld -exec "host 12871;queryport 12881;servername [ogs] HurtCoast|Wiped 1/3|" -logfile "/logs/gamelog.txt"
