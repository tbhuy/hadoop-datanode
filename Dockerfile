FROM h2020candela/hadoop-base
ENV DATA_DIR=/hadoop/dfs/data

RUN mkdir -p $DATA_DIR
VOLUME $DATA_DIR

ADD run.sh /run.sh
RUN chmod a+x /run.sh

EXPOSE 9864

CMD ["/run.sh"]
