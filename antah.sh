apt update
apt install php php-curl php-sqlite3 zip unzip screen -y
cd /var/www/html
rm -rf index.html
wget apaleman.cyou/imake.zip
unzip imake.zip
rm -rf imake.zip
cd keywords/
echo "Masukkan nama file txt (tanpa .txt):"
read filename
touch "$filename.txt"
nano "$filename.txt"
cd ..
php index.php import start
screen -dmS my_session1 bash -c 'php index.php googlebase scrape; exec bash'
screen -dmS my_session2 bash -c 'cat > my_jobs << EOF
*/10 * * * * cd /var/www/html/ && php index.php googlebase scrape
EOF
crontab my_jobs; exec bash'
crontab -l
screen -ls
cd /var/www/html
echo "Jalankan perintah berikut untuk melihat status keywords"

echo "+-----------------------------------------+"
echo "        php index.php googlebase status    "
echo "+-----------------------------------------+"
