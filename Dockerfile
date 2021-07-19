FROM python:3.9
ENV PYTHONUNBUFFERED=1
RUN apt-get update -y
RUN apt-get install -y wget curl bash git neofetch sudo software-properties-common ffmpeg
COPY requirements.txt .
RUN pip3 install -U -r requirements.txt
RUN git clone -b main https://github.com/Hirojazz/TessiaEralith /root/Tessia
WORKDIR /root/Tessia
COPY . .
CMD ["python3", "-m", "Tessia"]
