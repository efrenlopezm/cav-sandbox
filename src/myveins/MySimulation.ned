//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 

package mqtt.myveins;

import inet.node.inet.StandardHost;
import org.car2x.veins.nodes.Car;
import org.car2x.veins.nodes.RSU;


network MyVeinsSimulation
{
    parameters:
        int numVehicles = default(1);
    submodules:
        rsu: RSU {
            @display("p=500,200");
        }
        vehicle[numVehicles]: Car {
            @display("p=100,200; r, 300");
        }
        cloudServer: StandardHost {
            @display("p=700,200");
        }
}
