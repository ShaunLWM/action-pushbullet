FROM appropriate/curl:latest

LABEL "version"="0.0.1"
LABEL "repository"="https://github.com/ShaunLWM/action-pushbullet"
LABEL "maintainer"="ShaunLWM"

LABEL "com.github.actions.name"="Pushbullet Notification"
LABEL "com.github.actions.description"="Send a push notification to Pushbullet."
LABEL "com.github.actions.icon"="send"
LABEL "com.github.actions.color"="blue"

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
