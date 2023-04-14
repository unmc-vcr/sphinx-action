FROM sphinxdoc/sphinx:5.3.0

ADD entrypoint.py /entrypoint.py
ADD sphinx_action /sphinx_action

RUN apt-get update -y && apt-get install -y git

ENTRYPOINT ["/entrypoint.py"]
