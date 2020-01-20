FROM ubuntu:18.04
RUN apt update && apt install curl -y && curl -sL https://deb.nodesource.com/setup_12.x | bash
RUN apt install nodejs -y && node --version && npm --version
# && curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash 
#RUN export NVM_DIR="$HOME/.nvm" >> ~/.bashrc
#RUN echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> ~/.bashrc
#RUN echo '[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"' >> ~/.bashrc
#COPY .bashrc /root/.bashrc
#COPY init.sh /root/init.sh
#RUN chmod +x /root/init.sh
#RUN /root/init.sh
#RUN source /root/.bashrc
#RUN nvm install --lts
RUN npm install -g percollate --unsafe-perm=true
RUN apt install gconf-service \
libasound2 \
libatk1.0-0 \
libatk-bridge2.0-0 \
libc6 \
libcairo2 \
libcups2 \
libdbus-1-3 \
libexpat1 \
libfontconfig1 \
libgcc1 \
libgconf-2-4 \
libgdk-pixbuf2.0-0 \
libglib2.0-0 \
libgtk-3-0 \
libnspr4 \
libpango-1.0-0 \
libpangocairo-1.0-0 \
libstdc++6  \
libx11-6 \
libx11-xcb1 \
libxcb1 \
libxcomposite1 \
libxcursor1 \
libxdamage1 \
libxext6 \ 
libxfixes3 \
libxi6 \
libxrandr2 \
libxrender1 \
libxss1 \
libxtst6 \
ca-certificates \
fonts-liberation \
libappindicator1 \
libnss3 \
lsb-release \
xdg-utils \
wget \ 
-y && apt remove curl -y 
RUN apt autoremove -y  && apt clean && rm -rf /var/lib/apt/lists/*
CMD /bin/bash
