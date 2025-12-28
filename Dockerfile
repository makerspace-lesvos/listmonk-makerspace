FROM listmonk/listmonk:latest

COPY static /listmonk/static

# Ensure listmonk uses the customized static directory for system templates.
CMD ["./listmonk", "--static-dir=/listmonk/static"]
