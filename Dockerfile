# Use Ubuntu as the base image
FROM debian:bullseye

# Set environment variables to avoid prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

ENV PYTHONPATH=/app/src:$PYTHONPATH

# Install Python and other dependencies
RUN apt-get update && apt-get install -y python3 python3-pip 

# RUN pip3 install networkx && pip3 install streamlit && pip3 install matplotlib

COPY . /app
WORKDIR /app
RUN pip3 install -e .

# Set the entry point
ENTRYPOINT ["bash"]
