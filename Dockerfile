FROM ubuntu:22.04



# Install dependencies
RUN apt-get update && apt-get install -y \
    curl \
    git \
    python3 \
    python3-pip \
    sudo \
    && rm -rf /var/lib/apt/lists/*

# Add user pi and give it root privileges
RUN useradd -m -s /bin/bash pi && echo "pi:pi" | chpasswd && adduser pi sudo

USER pi 

# Install kas
RUN pip3 install kas --no-warn-script-location


WORKDIR /app

# Set the entrypoint to kas
ENTRYPOINT ["bash"]