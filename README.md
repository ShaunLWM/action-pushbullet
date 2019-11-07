# Pushbullet Notifications for GitHub Actions

![screenshot](screenshot.png)

This action allows you to send yourself a push notification via [Pushbullet](https://www.pushbullet.com/).

## Usage

To use the action simply add the following lines to your `.github/main.workflow` and provide the required Secrets and Environment variables.

```
action "Build Completion" {
  uses = "ShaunLWM/action-pushbullet@master"
  secrets = ["PB_TOKEN"]
  env = {
    PB_TITLE = "Build Complete"
    PB_TEXT = "Your project has been built."
  }
}
```

#### YML
```
name: Pushbullet Notification
on: [push]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - name: Pushbullet Notification
      uses: ShaunLWM/action-pushbullet@master
      env:
        PB_TOKEN: ${{ secrets.PB_TOKEN }}
        PB_TITLE: Build Complete
        PB_TEXT: Your project has been built.
```

### Secrets

You'll need to provide these secrets to use the action. Enter these secrets in your Settings > Secrets

* **PB_TOKEN**: Get your access token [here](https://www.pushbullet.com/#settings/account)

### Environment Variables

You'll need to provide these environment variables to specify exactly what information to send to your device.

* **PB_TITLE**: The title of the notification.
* **PB_TEXT**: The body of the notification.

## License

MIT 2019
