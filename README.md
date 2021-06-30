pptx-calendar-generator
=======================

[![docker](https://img.shields.io/docker/v/hichtakk/pptx-calendar-generator?sort=semver&color=blue)](https://hub.docker.com/r/hichtakk/pptx-calendar-generator)  [![license](https://img.shields.io/github/license/hichtakk/pptx-calendar-generator)]()

Calendar generator for MS PowerPoint.

# Usage

# Run with Docker container
Just run with pre-build docker image and generate 12 month calender for specified year.
If you don't pass ${YEAR} argument, generator will build current year calendar.

```
$ docker run --rm --mount type=bind,src=$(pwd),dst=/work hichtakk/pptx-calendar-generator ${YEAR}
```
