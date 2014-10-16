function simple_node_server {
  args=("$@")

  # clone repo
  git clone https://github.com/davideast/simple-node-server.git ${args[0]}

  cd ${args[0]}

  # remove git repo
  rm -rf .git

  # init repo
  git init

  #npm install
  npm install

  #bower install
  bower install
}

# use this alias in your .bash_profile
# alias simns="simple_node_server"
