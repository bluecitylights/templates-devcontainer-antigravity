FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Installeer curl
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

# Installeer Antigravity globaal via de juiste -d vlag
RUN curl -fsSL https://antigravity.google/cli/install.sh | bash -s -- -d /usr/local/bin

# Zorg ervoor dat het post-create script straks uitgevoerd mag worden
COPY post-create.sh /tmp/post-create.sh
RUN chmod +x /tmp/post-create.sh