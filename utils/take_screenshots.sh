##################################################################################
#
#    Copyright 2015 Félix Brezo and Yaiza Rubio (i3visio, contacto@i3visio.com)
#
#    This program is part of reveal.js - i3visio edition. You can redistribute it 
#    and/or modify it under the terms of the GNU General Public License as 
#    published by the Free Software Foundation, either version 3 of the License, 
#    or (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
##################################################################################

mkdir -p "../screenshots"            # Creates it if missing
echo "This program will take the screenshots of your screen every second."

echo "Now open up your presentation in the browser and set it to fullscreen."
echo "You have 10 seconds."
t=10
while [ $t -gt 0 ]; do
      echo "$t..."
      sleep 1
      t=$(($t-1))
done

echo "Press <Ctrl+C> when the presentation has finished..."

i=1000000
pause=1
while true; do
    scrot -d $pause "../screenshots/shot$i.png"
    xdotool key space
    i=$(($i+1))
done


