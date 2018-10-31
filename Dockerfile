# USAGE:
# docker build --rm -t sam .
# docker run --rm sam --version

FROM python

RUN export PATH=$PATH:/root/.local/bin/ \
&& pip install --user aws-sam-cli

WORKDIR /temp

ENTRYPOINT ["/root/.local/bin/sam"]
