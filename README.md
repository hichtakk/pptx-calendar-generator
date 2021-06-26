pptx-calendar-generator
=======================

[![container repository](https://img.shields.io/badge/docker-0.0.1-blue)](https://hub.docker.com/r/hichtakk/pptx-calendar-generator)  

Calendar generator for MS PowerPoint.

# Usage

# Run with Docker container
Just run with pre-build docker image and generate 12 month calender for specified year.
If you don't pass ${YEAR} argument, generator will build current year calendar.

```
$ docker run -it --rm -v $(pwd):/work hichtakk/pptx-calendar-generator /usr/local/bin/pptx-calendar ${YEAR}
```
