# listmonk-makerspace

Custom listmonk image for Makerspace Lesvos with branded system email templates.

## What's included

- Custom `subscriber-optin.html` double opt-in email content.
- Updated system email base styles to match the Makerspace Lesvos website.
- Dockerfile that bundles the customized `static/` templates and runs listmonk with `--static-dir`.
- GitHub Actions workflow to publish the image to GHCR.

## Build locally

```bash
docker build -t listmonk-makerspace:latest .
```

## Run locally

```bash
docker run --rm -p 9000:9000 listmonk-makerspace:latest
```

## GitHub Container Registry

The workflow publishes to:

```
ghcr.io/makerspace-lesvos/listmonk-makerspace
```

Tags:
- `latest`
- `sha-<commit>`

## Using in Helm

```yaml
listmonk:
  image:
    repository: ghcr.io/makerspace-lesvos/listmonk-makerspace
    tag: latest
```

## Notes

- System templates live under `static/email-templates/`.
- Base layout and styles are in `static/email-templates/base.html`.
- The opt-in email is in `static/email-templates/subscriber-optin.html`.
