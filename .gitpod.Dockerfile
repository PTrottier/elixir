FROM gitpod/workspace-full

# Install Elixir (as per https://elixir-lang.org/install.html#unix-and-unix-like)
RUN sudo apt-get -q update && \
    sudo wget https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb && \
    sudo dpkg -i erlang-solutions_2.0_all.deb && \
    sudo apt-get -q update && \
    sudo apt-get -yq install esl-erlang && \
    sudo apt-get -yq install elixir && \
    sudo rm -rf /var/lib/apt/lists/*