FROM localstack/localstack:0.10.9

# Next, let's add the setups to rename the existing localstack `docker-entrypoint.sh`
RUN mv /usr/local/bin/docker-entrypoint.sh /usr/local/bin/localstack-entrypoint.sh
# Last, all we need to do is copy our own script file named `docker-entrypoint.sh`
ADD bin/docker-entrypoint.sh /usr/local/bin/
