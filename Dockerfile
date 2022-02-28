FROM rocker/tidyverse:4.0.0

RUN R -e 'install.packages("reshape2")'
RUN R -e 'install.packages("ggplot2")'

COPY /StudentsPerformance.csv

CMD Rscript /script.R
