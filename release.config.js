module.exports = {
  plugins: [
    "@semantic-release/commit-analyzer",
    [
      "@semantic-release/exec",
      {
        publishCmd: "scripts/docker-build-and-push.sh ${nextRelease.version}",
      },
    ],
    '@semantic-release/github'
  ],
  branches: ["main"],
  repositoryUrl: "https://github.com/dclappert/protoc-gen-salesforce-apex-runner-container.git",
};