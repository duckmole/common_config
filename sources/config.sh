check_atom_version(){
  local expected_version=$1
  local installed_version="$(atom --version)"
  [ "${expected_version}" = "${installed_version}" ]
}
