#!/bin/bash

count=$(checkupdates | wc -l)

if [ count == 0 ]
  then 
    echo "%{T1} %{T-} %{T2}Up-2-date!"
else
    echo "%{T1} %{T-} %{T2}$count%{T-}"
fi