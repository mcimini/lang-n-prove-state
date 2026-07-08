
cd ./generated

for f in *User*.thm; do
  file="${f%.*}"
  abella "$file".thm -c "$file".thc > "$file".result || echo -e "failed: $f\n"
done


for f in *.thm; do
  abella "$f" > "$f".result || echo -e "failed: $f\n"
done

rm *.result
