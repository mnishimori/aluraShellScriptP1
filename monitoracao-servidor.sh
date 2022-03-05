#!/bin/bash

resposta_http=$(curl --write-out %{http_code} --silent --output /dev/null https://opa.agirsaude.org.br)

echo $resposta_http