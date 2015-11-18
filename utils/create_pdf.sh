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

echo "Grabbing all the .png files..."
for name in ../screenshots/*.png; do 
    convert $name ../screenshots/`basename $name .png`.pdf; 
done

echo "Creating pdf in the root folder of the project..."
pdftk ../screenshots/*.pdf cat output ../presentation.pdf
