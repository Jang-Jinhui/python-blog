docker run --name python-django-container \
    --rm -it -p 9090:9090 \
    -v /e/Python-project/python-djangogirls:/python-docker \
    --link djangogirls-postgres \
    python-django
