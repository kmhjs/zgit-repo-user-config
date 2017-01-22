#! /usr/bin/env zsh -f

if [[ ! -f ${ZGITREPO_USER_CONFIG_FILE} ]]
then
  echo '[Error] No configuration file path was configured by ZGITREPO_USER_CONFIG_FILE' 1>&2
  return 1
fi

echo "[Info] Copy & Paste (Replace) following lines to your configuration file (${ZGITREPO_USER_CONFIG_FILE})."
echo '----- begin -----'

cat ${ZGITREPO_USER_CONFIG_FILE} | while read config_line
do
  local -a config=(${(s:%:)config_line})

  echo '('
  echo "  :path '${config[1]}'"
  echo "  :name '${config[2]}'"
  echo "  :email '${config[3]}'"
  echo ')'
done

echo '----- end -----'
