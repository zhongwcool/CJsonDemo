cmake_minimum_required(VERSION 3.20)
project(CJsonDemo C)

set(CMAKE_C_STANDARD 99)

add_executable(cjson main.c
        cJSON.c
        cJSON.h
        )
