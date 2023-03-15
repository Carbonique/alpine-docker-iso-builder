#!/bin/sh
profile_k3s(){

  profile_virt

  apks="$apks k3s"
  local _k _a
   for _k in $kernel_flavors; do
       apks="$apks linux-$_k"
       for _a in $kernel_addons; do
           apks="$apks $_a-$_k"
       done
   done

}
