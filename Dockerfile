FROM continuumio/miniconda3
#ADD environment.yml /tmp/environment.yml
#RUN conda env create -f /tmp/environment.yml

ADD spec-file.txt /tmp/spec-file.txt
RUN conda create -n PP --file /tmp/spec-file.txt

# Pull the environment name out of the environment.yml
RUN echo "source activate PP" > ~/.bashrc
ENV PATH /opt/conda/envs/PP/bin:$PATH
