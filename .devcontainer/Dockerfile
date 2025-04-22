FROM mcr.microsoft.com/devcontainers/python:3.12

# Install Node.js for the TypeScript part
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs

# Set up zsh and git
RUN apt-get update && apt-get install -y zsh git && \
    chsh -s $(which zsh)

# Optional: Install Poetry or other Python tools
RUN pip install --upgrade pip && pip install virtualenv

WORKDIR /workspace/music_assistant
