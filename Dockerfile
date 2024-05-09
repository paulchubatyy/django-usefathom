FROM python:3.10-alpine
RUN apk add --no-cache poetry twine gcc libffi-dev python3-dev