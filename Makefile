.DEFAULT_GOAL := build-run

setup:
	./app/gradlew wrapper --gradle-version 8.5

clean:
	./app/gradlew -p app clean

build:
	./app/gradlew -p app clean build

install:
	./app/gradlew -p app clean install

run-dist:
	./app/build/install/app/bin/app

run:
	./app/gradlew -p app run

test:
	make -C app test

report:
	./app/gradlew -p app jacocoTestReport

lint:
	make -C app lint

check-deps:
	./app/gradlew  -p app dependencyUpdates -Drevision=release


build-run: build run

.PHONY: build
