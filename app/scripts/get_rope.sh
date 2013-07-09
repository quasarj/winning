cd masterra_savedvariables
git pull
cd ..
echo "Updating rope..."
lua convert_tsm_data.lua > rope.py
echo "Done."
