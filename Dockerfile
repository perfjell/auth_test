FROM python:3
ADD api.py /
RUN pip install pystrich
RUN pip install flask
RUN pip install pyjwt
EXPOSE 5000
CMD ["python", "./api.py"]


