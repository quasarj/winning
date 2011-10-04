cd /home/winning/scripts
./load_auctions.py
./get_wowhead_data.py
# ./export_auctions.sh
cd masterra_savedvariables
git pull
cd ..
./get_rope.py
./update_sales.py
