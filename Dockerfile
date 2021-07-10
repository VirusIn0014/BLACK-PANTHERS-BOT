FROM teamvaders/hellbot:latest

#clonning repo 
RUN git clone https://github.com/OPBLACKPANTHERS/BLACK-PANTHERS-USERBOT.git /root/BlackPanthers

#working directory 
WORKDIR /root/BlackPanthers

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","BlackPanthers"]
