# Local preview in Docker, using the same Ruby as .ruby-version
FROM ruby:4.0.7

# Compilers for gems with native extensions
RUN apt-get update && apt-get install -y build-essential \
    && rm -rf /var/lib/apt/lists/*

# Non-root user with UID 1000 (matches docker-compose.yaml)
RUN groupadd -g 1000 vscode && \
    useradd -m -u 1000 -g vscode vscode

WORKDIR /usr/src/app
RUN chown -R vscode:vscode /usr/src/app
USER vscode

# Install the exact gem versions from the lockfile
COPY Gemfile Gemfile.lock ./
RUN bundle install

CMD ["bundle", "exec", "jekyll", "serve", "-H", "0.0.0.0", "-w", "--config", "_config.yml,_config_docker.yml"]
