#!/usr/bin/env bash

if [ "$id_rsa" ]; then
    echo "RSA is set"
    if [ ! -f ~/.ssh/id_rsa ]; then
    	mkdir -p ~/.ssh
    	echo $id_rsa > ~/.ssh/id_rsa
    	sed -ie 's/-----BEGIN RSA PRIVATE KEY-----/PPPPPPPPPPPPPPP/g' ~/.ssh/id_rsa
    	sed -ie 's/-----END RSA PRIVATE KEY-----/OOOOOOOOOOOOOOOOO/g' ~/.ssh/id_rsa
    	sed -ie 's/\s\+/\n/g' ~/.ssh/id_rsa
    	sed -ie 's/PPPPPPPPPPPPPPP/-----BEGIN RSA PRIVATE KEY-----/g' ~/.ssh/id_rsa
    	sed -ie 's/OOOOOOOOOOOOOOOOO/-----END RSA PRIVATE KEY-----/g' ~/.ssh/id_rsa
    	chmod 400 ~/.ssh/id_rsa
    	echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config
    fi
    unset id_rsa
fi

if [ -d "/opt/project/bin" ]; then
  export PATH=/opt/project/bin:$PATH
fi

if [ -f /opt/project/bin/bashrc ]; then
    exec bash /opt/project/bin/bashrc
else
    exec bash
fi

