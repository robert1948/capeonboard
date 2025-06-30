# Use the official n8n image
FROM n8nio/n8n

# Optional: set default timezone
ENV GENERIC_TIMEZONE=Africa/Johannesburg

# Set basic auth (you can override via Heroku config vars)
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=adminpass

# Webhook URL (Heroku will set this dynamically)
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=8080
ENV N8N_PROTOCOL=https
EXPOSE 8080

# Start the app
CMD ["n8n"]
