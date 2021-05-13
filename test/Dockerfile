FROM trestletech/plumber

#### Copies the files in this directory to files in your container.
RUN mkdir /test
COPY plumber.R /test
WORKDIR /test

#### This starts your R-powered service.
EXPOSE 8080
ENTRYPOINT ["R", "-e", \
    "pr <- plumber::plumb('/test/plumber.R'); pr$run(host='0.0.0.0', port=8080)"]

CMD ["plumber.R"]
