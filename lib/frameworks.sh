#!/usr/bin/env bash

is_spring_boot() {
  local buildDir=${1:?}
   test -f ${buildDir}/pom.xml
}

is_wildfly_swarm() {
  local buildDir=${1:?}
  test -f ${buildDir}/pom.xml &&
    test -n "$(grep "<groupId>org.wildfly.swarm" ${buildDir}/pom.xml)"
}

has_postgres() {
  local buildDir=${1:?}
  test -f ${buildDir}/pom.xml
}