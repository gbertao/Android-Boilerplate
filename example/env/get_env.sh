#!/bin/bash

# Get OpenJDK 17
wget https://download.java.net/java/GA/jdk17.0.1/2a2082e5a09d4267845be086888add4f/12/GPL/openjdk-17.0.1_linux-x64_bin.tar.gz

tar -xvf openjdk-17.0.1_linux-x64_bin.tar.gz
export JAVA_HOME=$(pwd)/jdk-17.0.1
export PATH=${JAVA_HOME}/bin:$PATH

# Get Gradle 8.0
wget https://services.gradle.org/distributions/gradle-8.0-bin.zip
unzip gradle-8.0-bin.zip

# Get Android SDK
mkdir Sdk
pushd Sdk
wget https://dl.google.com/android/repository/commandlinetools-linux-11076708_latest.zip
unzip commandlinetools-linux-11076708_latest.zip
yes y | ./cmdline-tools/bin/sdkmanager --sdk_root=$(pwd) --install 'platforms;android-33' 'build-tools;30.0.3' 'emulator' 'platform-tools' 'platforms;android-33'

export ANDROID_HOME=$(pwd)
popd
