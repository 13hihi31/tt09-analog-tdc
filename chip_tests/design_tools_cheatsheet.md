# Chip tools cheat sheet

## VM Instalation

```bash
sudo apt install liblzf1 libtpms0 libxcb-cursor0
sudo dpkg -i virtualbox-7.2_7.2.0-170228~Ubuntu~noble_amd64.deb
```

Before starting the VM run:

```bash
sudo modprobe -r kvm_amd kvm
```

### VM Settings

Set Adapter 1 Attached to **Bridged Adapter**.

## Magic Commands

* magic -rcfile pdk/volare/sky130/libs/tech/magic/sky130.magicrc
* box - show box parameters
* grid 0.05um 0.05um - set the grid to 0.05um x 0.05um
* grid - hide the grid
* snap user
* drc style drc(full)
* z - zoom in
* Shift z - zoom out
* Ctrl z - zoom to box
* Arrow keys - panning
* paint poly - paints the box with polysilicon (ndiff/li/ndc/psd/psc/nwell/pc)
* Middle mouse buton - paint the box with what the mouse points to
* drc why - output the DRC error inside the box
* erase poly - erase the polysilicon inside the box
* s - select the entire cell
* select area - select the area inside the box
* copy n 30 - copy the selected area 30 units north
* move n 1 - move the selected area 1 unit north
* label A w - make a label "A" to the west
* port make 1 - make the first port
* save inverter - save the cell as inverter
* port remove - remove port in area
* erase label - erases the label
* getcell inverter - get the inverter cell
* extract all - extract all transistors
* ext2spice hierarchy on
* ext2spice scale off
* ext2spice
* space - toggle wiring tool
* left mouse button - start wire segment
* right mouse button - end wire segment
* shift - move one metal level up with contact between levels
* stretch n 10
* setlabel layer m2 - set the label layer to metal 2
* drc find
* writeall
* goto net_name

## LVS

* extract do local
* extract all
* ext2spice lvs
* ext2spice -o zero_opamp_layout.spice
* copy the .spice file from ~/.xschem/simulations/zero_opamp.spice
* netgen -batch lvs "zero_opamp_layout.spice zero_opamp" "zero_opamp.spice zero_opamp" /usr/share/pdk/sky130A/libs.tech/netgen/sky130A_setup.tcl

## GDS and LEF Export

* gds write ../gds/tt_um_circuit.gds
* lef write ../lef/tt_um_circuit.lef -pinonly
* klayout gds/tt_um_circuit.gds
