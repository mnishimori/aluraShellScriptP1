#!/bin/bash

memoria_total=$(free -h | grep -i mem | awk '{ print $2 }')

memoria_consumida=$(free -h | grep -i mem | awk '{ print $3 }')