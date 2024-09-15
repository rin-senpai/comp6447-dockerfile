# Use the x86_64 Ubuntu image
FROM --platform=linux/amd64 ubuntu:latest

# Install required packages
RUN apt-get update && \
    apt-get install -y python3 python3-pip gcc gdb git ncat neovim

# Install PwnTools
RUN pip3 install pwntools --break-system-packages

# Install PwnDBG
RUN git clone https://github.com/pwndbg/pwndbg && \
    cd pwndbg && \
    ./setup.sh

# Set the working directory
WORKDIR ~/COMP6447

# Entry point
CMD [ "bash" ]
