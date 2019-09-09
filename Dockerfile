FROM python:3
# ADD api.py /
# RUN pip install pystrich
# RUN pip install flask
# RUN pip install pyjwt
# EXPOSE 80
# #CMD ["killall python"]
# CMD ["python", "./api.py"]



WORKDIR /home/app

#If we add the requirements and install dependencies first, docker can use cache if requirements don't change
ADD requirements.txt /home/app
RUN pip install --no-cache-dir -r requirements.txt

ADD . /home/app
CMD python server.py

EXPOSE 3000