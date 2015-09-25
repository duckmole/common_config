ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.."; pwd)"
source "${ROOT_DIR}/sources/github.sh"

get_version_number() {
  local response="<html><body>You are being <a href=\"https://github.com/atom/atom/releases/tag/v1.0.18\">redirected</a>.</body></html>"
  local version=($(parse_release_response "${response}"))
  assertion__equal "1.0.18" "${version[@]}"
}
