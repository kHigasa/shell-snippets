#!/bin/sh

tar cf - * | pv | gzip > archive.tar.gz

