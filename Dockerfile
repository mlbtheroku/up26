FROM python:3.9.10

WORKDIR .
RUN apt -qq update && apt -qq install -y git ffmpeg

COPY . .

RUN pip3 install -U -r requirements.txt
EXPOSE 5000
CMD ["python3", "bot.py"]
