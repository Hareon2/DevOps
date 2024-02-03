#!/bin/bash

# Сначала выполняем vagrant up
vagrant up

# Определение строки с запросом интерфейса
question="Which interface should the network bridge to?"

# Отправляем "1" вводом при обнаружении строки запроса интерфейса
expect -c "
  set timeout 60
  spawn vagrant up
  expect \"$question\"
  send \"1\n\"
  interact
"

