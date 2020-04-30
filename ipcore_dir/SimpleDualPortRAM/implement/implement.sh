
 
 
 




#!/bin/sh

# Clean up the results directory
rm -rf results
mkdir results

#Synthesize the Wrapper Files

echo 'Synthesizing example design with XST';
xst -ifn xst.scr
cp SimpleDualPortRAM_exdes.ngc ./results/


# Copy the netlist generated by Coregen
echo 'Copying files from the netlist directory to the results directory'
cp ../../SimpleDualPortRAM.ngc results/

#  Copy the constraints files generated by Coregen
echo 'Copying files from constraints directory to results directory'
cp ../example_design/SimpleDualPortRAM_exdes.ucf results/

cd results

echo 'Running ngdbuild'
ngdbuild -p xc6slx9-tqg144-2 SimpleDualPortRAM_exdes

echo 'Running map'
map SimpleDualPortRAM_exdes -o mapped.ncd -pr i

echo 'Running par'
par mapped.ncd routed.ncd

echo 'Running trce'
trce -e 10 routed.ncd mapped.pcf -o routed

echo 'Running design through bitgen'
bitgen -w routed

echo 'Running netgen to create gate level Verilog model'
netgen -ofmt verilog -sim -tm SimpleDualPortRAM_exdes -pcf mapped.pcf -w -sdf_anno false routed.ncd routed.v
