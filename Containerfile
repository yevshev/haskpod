FROM haskell:latest

ENV SERVICE_URL=https://open-vsx.org/vscode/gallery
ENV ITEM_URL=https://open-vsx.org/vscode/item

RUN curl -fsSL https://code-server.dev/install.sh | sh
RUN code-server --install-extension haskell.haskell

CMD code-server --auth none --disable-telemetry
