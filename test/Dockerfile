FROM rocker/tidyverse
#### Install CRAN or Github packages not in rocker/tidyverse.
RUN install2.r plumber  # Add more packages separated by spaces.
#### Copies the files in this directory to files in your container.
COPY [".", "./"]
#### This starts your R-powered service.
EXPOSE 8000
ENTRYPOINT ["R", "-e", \
    "pr <- plumber::plumb('/test/plumber.R'); pr$run(host='0.0.0.0', port=8000)"]
CMD ["plumber.R"]
