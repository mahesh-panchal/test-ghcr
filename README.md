# Testing GHCR

```bash
# Set your GitHub token as an environment variable
echo $GITHUB_TOKEN | docker login ghcr.io -u <your-github-username> --password-stdin
# Build the Docker image
docker build -t ghcr.io/<your-github-username>/<image-name>:<tag> .
# Push the Docker image to GitHub Container Registry
docker push ghcr.io/<your-github-username>/<image-name>:<tag>
```

# Building with Seqera Wave

[Seqera Wave Cli](https://github.com/seqeralabs/wave-cli)

```bash
./wave-1.6.1-macos-arm64 --conda-file conda-env.yml --freeze --await
```

- `--freeze` uploads the image to the Seqera Wave Public registry.
- `--await` waits for the build to complete before exiting.
- builds a docker image by default
