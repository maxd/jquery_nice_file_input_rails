#!/bin/bash -e

jnfi_dir='./tmp/jquery-nice-file-input'

jnfi_assets_dir='./app/assets'
jnfi_javascripts_dir="$jnfi_assets_dir/javascripts"
jnfi_stylesheets_dir="$jnfi_assets_dir/stylesheets"

error() {
  echo -e -n "\033[1;31m$1"
  echo -e '\033[0m'
}

success() {
  echo -e -n "\033[1;32m$1"
  echo -e '\033[0m'
}

info() {
  echo -e -n "\033[1;34m$1"
  echo -e '\033[0m'
}

if [ $# -ne 1 ] ; then
  error "USAGE: $0 <jQuery-Nice-File-Input version>"
  exit 1
fi

if [ ! -d $jnfi_dir ]; then
  info "jQuery-Nice-File-Input not found. Cloning to $jnfi_dir..."
  git clone --quiet git://github.com/jaydevonline/jQuery-Nice-File-Input.git $jnfi_dir
fi

info "Using $1..."
cd $jnfi_dir
git checkout --quiet "$1"
cd -

info "Remove $jnfi_assets_dir directory..."
rm -rf $jnfi_assets_dir

info "Copying JavaScript..."
mkdir -p $jnfi_javascripts_dir
cp $jnfi_dir/dist/jquery.nice-file-input.js $jnfi_javascripts_dir
cp $jnfi_dir/dist/jquery.nice-file-input.min.js $jnfi_javascripts_dir

info "Copying Stylesheets..."
mkdir -p $jnfi_stylesheets_dir
cp $jnfi_dir/dist/jquery.nice-file-input.css $jnfi_stylesheets_dir
cp $jnfi_dir/dist/jquery.nice-file-input.min.css $jnfi_stylesheets_dir

success "Done"