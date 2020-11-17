FROM gcc:9.3.0
WORKDIR /app/src
COPY . .
RUN make -f Makefile.Linux
RUN cp src/3proxy /app/
WORKDIR /app
RUN rm -rf src
#CMD [ "./3proxy", "development.cfg" ]