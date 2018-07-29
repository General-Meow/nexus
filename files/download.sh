#!/bin/bash

curl -L -b "oraclelicense=a" http://download.oracle.com/otn-pub/java/jdk/8u181-b13/96a7b8442fe848ef90c96a2fad6ed6d1/jdk-8u181-linux-arm32-vfp-hflt.tar.gz -O


curl 'https://sonatype-download.global.ssl.fastly.net/repository/repositoryManager/3/nexus-3.13.0-01-unix.tar.gz' -H 'Connection: keep-alive' -H 'Pragma: no-cache' -H 'Cache-Control: no-cache' -H 'Upgrade-Insecure-Requests: 1' -H 'DNT: 1' -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8' -H 'Accept-Encoding: gzip, deflate, br' -H 'Accept-Language: en-GB,en-US;q=0.9,en;q=0.8' --compressed -o nexus-3.13.0-01-unix.tar.gz
