mkdir -p scrap-data
cd scrap-data
wget -q -r -l5 -x 5  https://www.bbc.com
cd ..
grep -r -Po -h '(?<=href=")[^"]*' scrap-data/ >links_temp.csv
grep "^http" links_temp.csv >links_temp_filtered.csv
sort -u links_temp_filtered.csv > links.csv
rm -rf scrap-data links_temp.csv links_temp_filtered.csv
