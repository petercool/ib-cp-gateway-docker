FROM openjdk:8-jdk

WORKDIR /app

# Copy the entire ib_cp_gateway directory
COPY ib_cp_gateway/ .

# Make the run script executable
RUN chmod +x bin/run.sh

# Expose port 8000
EXPOSE 8000

# Set the entrypoint
ENTRYPOINT ["./bin/run.sh", "./root/conf.yaml"]
