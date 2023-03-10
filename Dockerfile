FROM python:3.9

WORKDIR /app

COPY . .
RUN pip install --no-cache-dir -r ./requirements.txt
CMD ["python", "sentiment_analysis_bert_kafka.py"]