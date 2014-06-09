#!/bin/sh

create_link_to_path(){
	local name=$1
	ln -s `pwd`/$name /usr/bin/
}

create_link_to_path craven
create_link_to_path c-archiver

