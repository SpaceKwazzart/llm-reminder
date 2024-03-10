FROM python:3.11

WORKDIR /reminderAI

COPY ./requirements.txt .

RUN pip install --upgrade pip setuptools && pip install -r requirements.txt

COPY ./reminderAI ./

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
CMD ["uvicorn", "reminderAI.asgi:application", "--host", "0.0.0.0", "--port", "8000"]

