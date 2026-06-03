#!/usr/bin/dumb-init /bin/bash

export NODE_ENV=production
export CONFIG_DIRECTORY=/config/seerr

# source in env (listen ip and port)
source '/etc/conf.d/seerr'

# setup environment
export NODE_ENV='production'

# run app
cd '/usr/lib/seerr' && /usr/bin/node 'dist/index.js'
