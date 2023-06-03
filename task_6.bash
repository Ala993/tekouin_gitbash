line_number=1

while IFS= read -r line; do
  if [[ $line_number -eq 3 ]]; then
    echo "$line"
    break
  fi
  ((line_number++))
done < "/etc/passwd"