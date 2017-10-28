#!/bin/bash
if [ -e /etc/yum.repos.d/mysql*.repo ];
then
echo "exists"
else
echo "no"
fi
