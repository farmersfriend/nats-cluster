echo "this script contains snippets and should not be run directly"
exit

# deploy
fly deploy

# regions
# run the cluster in chicago
fly regions set scl ord iad

# scale
fly scale count 3

# Get a Wireguard Config
fly wireguard create

# Get the private 6pn IP for an app
host scl.solitary-sun-529.internal

# Set up NATS
nats context add ff.fly --server scl.solitary-sun-529.internal --description "FF Fly Cluster" --select

# Send some messages
nats sub TEST
nats pub TEST "Hello, World"