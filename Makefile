.PHONY: start kill develop

DIR="${PWD}"
# HOST="blog.home"
HOST="0.0.0.0"

start:
	jekyll serve --host ${HOST} --watch --unpublished --future

develop:
	@gnome-terminal --tab-with-profile="tab"\
			--title="server"\
			--working-directory="${DIR}"\
			--command="make start"\
			--tab-with-profile="tab"\
			--title="terminal"\
			--working-directory="${DIR}"

install:
	bundle install

kill:
	kill `ps ax -o pid,cmd | grep jekyll | awk '{ print $1 }'`
