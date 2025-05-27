FROM python:3
WORKDIR /usr/src/app
EXPOSE 4000/tcp
COPY app.py ./
COPY requirements.py ./
RUN pip install --no-cache-dir -r requirements.txt
CMD [ "python3", "-m", "flask", "run" ,"--host=0.0.0.0" ,"--port=4000" ]