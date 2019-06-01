FROM continuumio/miniconda3

ADD spec-test.txt /tmp/spec-test.txt
RUN conda create -n PP --file /tmp/spec-test.txt 

RUN echo "source activate PP" > ~/.bashrc

ENV PATH /opt/conda/envs/PP/bin:$PATH


