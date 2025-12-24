#!/usr/bin/dumb-init /bin/bash

# source in env (listen ip and port)
source '/etc/conf.d/seerr'

# setup environment
export NODE_ENV='production'

# run app
cd '/usr/lib/seerr' && /usr/bin/node 'dist/index.js'
