
cd ./generated

for f in *.thm; do
  abella "$f" > "$f".result || echo -e "failed: $f\n"
done

rm *.result
