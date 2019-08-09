#!/usr/bin/env bash

#_otp_completions() {
#  COMPREPLY=($(compgen -W "add get list rm" "${COMP_WORDS[1]}"))
#}
#complete -F _otp_completions otp

_otp() {
  local i=1 cmd

  while [[ "$i" -lt "$COMP_CWORD" ]]
  do
    local s="${COMP_CWORDS[i]}"
    case $s in
      -*) ;;
      *)
        cmd="$s"
        break
        ;;
    esac
    (( i++ ))
  done

  if [[ "$i" -eq "$COMP_CWORD" ]]
  then
    local cur="${COMP_WORDS[COMP_CWORD]}"
    COMPREPLY=($(compgen -W "add get list rm -h help" -- "$cur"))
    return
  fi

  case "$cmd" in
    list) _otp_list
      ;;
    add)
      _otp_add
      ;;
    get)
      _otp_get
      ;;
    rm)
      _otp_rm
      ;;
    *)  ;;
  esac
}
_otp_list () {
  local cur="${COM_WORDS[COMP_CWORD]}"
  COMPREPLY=()
}

_otp_get() {
  local i=1 get_index
  local keys="$(ls ~/.config/otp/keys/ | sed 's/.gpg//g')"
  while [[ $i -lt $COMP_CWORD ]]
  do
    local s="${COMP_WORDS[i]}"
    case "$s" in
      get)
        get_index=$i
        break
        ;;
    esac
    (( i++ ))
  done

}
complete -o bashdefault -F _otp otp
