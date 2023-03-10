FROM python:3.9

RUN mkdir /app
WORKDIR /app
RUN mkdir /app/cache
ENV TRANSFORMERS_CACHE=/app/cache/
COPY * /app
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r /app/requirements.txt
CMD ["python", "/app/sentiment_analysis_bert_kafka.py"]
