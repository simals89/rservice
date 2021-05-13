# example Dockerfile to expose a plumber service

FROM trestletech/plumber

# install the randomForest package
RUN R -e 'install.packages(c("randomForest"))'

# copy model and scoring script
RUN mkdir /test
COPY bos_rf.rds /test
COPY bos_rf_score.R /test
COPY plumber.R /test
WORKDIR /test

# plumb and run server
EXPOSE 8000
ENTRYPOINT ["R", "-e", \
    "pr <- plumber::plumb('/test/plumber.R'); pr$run(host='0.0.0.0', port=8000)"]
