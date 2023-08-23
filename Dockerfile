FROM ghcr.io/sap-samples/btp-setup-automator:latest

# Install chromium
RUN sudo apk update && sudo apk add --no-cache \
    chromium \
    udev \
    ttf-freefont
ENV CHROME_BIN=/usr/bin/chromium-browser

# Install global packages
RUN  sudo npm install -g yo generator-easy-ui5

# Set kubeconfig
ARG CURRENT_DIR
ENV CURRENT_DIR=${CURRENT_DIR}
ENV KUBECONFIG=${CURRENT_DIR}/kube/config






