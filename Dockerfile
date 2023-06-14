FROM gettyimages/spark:2.4.1-hadoop-3.0
RUN pip install pyspark
RUN pip install kafka-python
