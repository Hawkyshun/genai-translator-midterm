FROM jupyter/tensorflow-notebook

USER root
RUN pip install --upgrade pip \
    && pip install transformers pysrt \
    && fix-permissions "/home/${NB_USER}"

USER $NB_UID

COPY Samurai.Jack.S01E01.srt Translator.ipynb ./