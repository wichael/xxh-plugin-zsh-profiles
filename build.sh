#!/usr/bin/env bash

CDIR="$(cd "$(dirname "$0")" && pwd)"
build_dir=$CDIR/build
everythingToCopy="$CDIR/copy"

while getopts A:K:q option
do
  case "${option}"
  in
    q) QUIET=1;;
    A) ARCH=${OPTARG};;
    K) KERNEL=${OPTARG};;
  esac
done

rm -rf $build_dir
mkdir -p $build_dir




while IFS= read -r cf; do
   cp -r ~/$cf $build_dir/
done < $everythingToCopy

tar -cvf $build_dir/xxh-plugin-zsh-profiles.tar .

while IFS= read -r cf; do
   rm -rf $build_dir/$cf
done < $everythingToCopy



# source files


# renmame ~ in files



for f in pluginrc.zsh
do
    cp $CDIR/$f $build_dir/
done

#portable_url='https://,,,/.tar.gz'
#tarname=`basename $portable_url`
#
#cd $build_dir
#
#[ $QUIET ] && arg_q='-q' || arg_q=''
#[ $QUIET ] && arg_s='-s' || arg_s=''
#[ $QUIET ] && arg_progress='' || arg_progress='--show-progress'
#
#if [ -x "$(command -v wget)" ]; then
#  wget $arg_q $arg_progress $portable_url -O $tarname
#elif [ -x "$(command -v curl)" ]; then
#  curl $arg_s -L $portable_url -o $tarname
#else
#  echo Install wget or curl
#fi
#
#tar -xzf $tarname
#rm $tarname
