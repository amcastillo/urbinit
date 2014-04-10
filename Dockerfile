FROM yebyen/urbinit-re2
RUN git clone https://github.com/urbit/urbit 
RUN cd /urbit && make; make
ADD ./_urbinit /.urbinit
RUN ln -s /root/.urbit /.urbit
RUN echo 'source $HOME/.profile' >/.bashrc
RUN echo 'export URBIT_HOME=/urbit/urb' >/.profile
CMD ["/.urbinit"]
