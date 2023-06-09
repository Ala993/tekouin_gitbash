count_directories() {
  local dir=$1
  local count=0
  
  for item in "$dir"/*; do
    if [[ -d "$item" ]]; then
      ((count++))
      count+=($(count_directories "$item"))
    fi
  done
  
  echo "$count"
}

current_dir=$(pwd)
((count = $(count_directories "$current_dir") - 2))

echo "$count"
