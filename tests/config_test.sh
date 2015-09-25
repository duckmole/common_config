ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.."; pwd)"
source "${ROOT_DIR}/sources/config.sh"

check_atom_version_send_error() {
  check_atom_version 20
  assertion__status_code_is_failure $?
}
