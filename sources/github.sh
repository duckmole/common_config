parse_release_response(){
  local response=$1
  local regex="href=.*tag/v([0-9\.]+)"
  [[ $response =~ $regex ]]
  echo  "${BASH_REMATCH[1]}"
}
