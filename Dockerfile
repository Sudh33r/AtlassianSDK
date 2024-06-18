FROM eclipse-temurin:17-jdk-alpine
LABEL author=sudheer
WORKDIR /opt
RUN wget https://marketplace.atlassian.com/download/plugins/atlassian-plugin-sdk-tgz
RUN tar -xvzf atlassian-plugin-sdk-tgz
RUN rm -f atlassian-plugin-sdk-tgz
RUN mv /opt/atlassian-plugin-sdk-* /opt/atlassian-plugin-sdk
ENV PATH="/opt/atlassian-plugin-sdk/bin:$PATH"
RUN apk add gnupg
RUN atlas-version
CMD [ "sh" ]
