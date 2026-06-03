#!/bin/bash

# ==========================================================
# update, java 21, mariadb, fix curl Setup Script
# Amazon Linux 2023 (RPM Install Method)
# ==========================================================

set -e

echo "=================================================="
echo "Updating System Packages"
echo "=================================================="
sudo dnf update -y

echo "=================================================="
echo "Installing Java 21"
echo "=================================================="
sudo dnf install -y java-21-amazon-corretto-devel

echo "=================================================="
echo "Fixing curl Conflict (Removing curl-minimal)"
echo "=================================================="
sudo dnf remove -y curl-minimal
sudo dnf install -y curl

echo "=================================================="
echo "Installing Required Utilities"
echo "=================================================="
sudo dnf install -y git wget unzip yum-utils mariadb105-server
