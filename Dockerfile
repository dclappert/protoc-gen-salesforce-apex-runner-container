FROM golang:1.21.5-bullseye

# Install Unzip
RUN apt-get update \
  && apt-get install -y unzip

# Install Protoc
RUN curl -L https://github.com/protocolbuffers/protobuf/releases/download/v3.15.8/protoc-3.15.8-linux-x86_64.zip -o protoc.zip \
  && unzip protoc.zip -d /usr/local \
  && rm protoc.zip

# Install Go Tools
RUN go install -v golang.org/x/tools/gopls@latest

# Install Node.js (required for Salesforce CLI)
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && \
  apt-get install -y nodejs

# Install Salesforce CLI
RUN npm install -g sfdx-cli

# Install Yarn
RUN npm install -g yarn