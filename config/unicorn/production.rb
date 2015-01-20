# set path to app that will be used to configure unicorn,
# note the trailing slash in this example
@working_dir = "/dyne/apps/ec/ec_info_service/current/"
@shared_dir = "/dyne/apps/ec/ec_info_service/shared/"

worker_processes 1
working_directory @working_dir

timeout 30

# Specify path to socket unicorn listens to,
# we will use this in our nginx.conf later
listen "#{@shared_dir}tmp/sockets/unicorn.sock", :backlog => 64

# Set process id path
pid "#{@shared_dir}tmp/pids/unicorn.pid"

# Set log file paths
stderr_path "#{@shared_dir}log/unicorn.stderr.log"
stdout_path "#{@shared_dir}log/unicorn.stdout.log"
