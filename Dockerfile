FROM python:3.9-slim as build

WORKDIR /build
RUN pip install --upgrade pip && pip install poetry
COPY pyproject.toml poetry.lock ./
RUN poetry export --without-hashes -f requirements.txt > requirements.txt && \
    pip install -r requirements.txt

FROM python:3.9-slim
WORKDIR /work
COPY --from=build /usr/local/lib/python3.9/site-packages /usr/local/lib/python3.9/site-packages
COPY main.py /usr/local/bin/pptx-calendar
CMD ["/usr/local/bin/pptx-calendar"]