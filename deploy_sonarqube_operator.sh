#!/bin/bash

ansible-playbook ./smooth-operator.yaml \
  -e "operator_state=present" \
  -e "operator_name=sonarqube" \
  -e "operator_plural_name=sonarqubes" \
  -e "operator_short_name=sq" \
  -e "operator_group=gpte.opentlc.com" \
  -e "operator_version=v1alpha1" \
  -e "operator_kind=clusterwide" \
  -e "operator_namespace=gpte-operators" \
  -e "operator_image=quay.io/wkulhanek/sonarqube-operator:v0.0.6"
