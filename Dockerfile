FROM actualbudget/actual-server:latest

# Set where Actual stores its data
ENV ACTUAL_DATA_DIR=/data

WORKDIR /app

# Create the data directory and ensure it exists
RUN mkdir -p /data

# Actual’s web UI and API are served on port 5006 by default
ENV PORT=5006
EXPOSE 5006

# Start the Actual server
CMD ["/bin/sh", "-c", "yarn start"]
