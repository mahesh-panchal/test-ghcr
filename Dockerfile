FROM mambaorg/micromamba:1.4.9

COPY conda-env.yml /tmp/environment.yml
RUN micromamba create -y -n myenv -f /tmp/environment.yml
ENV PATH=/opt/conda/envs/myenv/bin:$PATH
