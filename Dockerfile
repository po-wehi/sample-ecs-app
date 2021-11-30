FROM circleci/python:3 

WORKDIR /ecs-app

COPY main.py ./

RUN pip install fastapi
RUN pip install "uvicorn[standard]"

ENTRYPOINT ["uvicorn", "main:app", "--reload", "--host", "0.0.0.0"]

