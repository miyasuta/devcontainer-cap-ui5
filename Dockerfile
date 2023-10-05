FROM ghcr.io/sap-samples/btp-setup-automator:latest

# Install chromium
RUN sudo apk update && sudo apk add --no-cache \
    chromium \
    chromium-chromedriver \
    udev \
    ttf-freefont
ENV CHROME_BIN=/usr/bin/chromium-browser

# Install global packages
RUN sudo npm i -g yo generator-easy-ui5
RUN sudo npm i -g typescript ts-node
RUN sudo npm i -g npm-check-updates

# for UI5 testing
RUN sudo npm i -g ui5-test-runner
RUN sudo npm i -g puppeteer

# Set kubeconfig
ARG CURRENT_DIR
ENV CURRENT_DIR=${CURRENT_DIR}
ENV KUBECONFIG=${CURRENT_DIR}/kube/config






