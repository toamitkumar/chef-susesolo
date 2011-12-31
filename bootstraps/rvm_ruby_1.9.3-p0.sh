#!/usr/bin/env bash

function bootstrap_rvm_ruby_1.9.3-p0 {

  echo "= Ruby 1.9.3-p0 Install"
  if [ -n "`rvm list | grep 1.9.3-p0`" ]; then
    echo "== Skipped, already installed"
  else
    rvm install 1.9.3
    rvm 1.9.3 --default
    echo "gem: --no-rdoc --no-ri" > /etc/gemrc
  fi
  echo "== Version: $(rvm 1.9.3 && ruby --version)"
  echo "= Ruby 1.9.3-p0 Installed"

}