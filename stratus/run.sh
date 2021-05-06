#!/bin/sh

make sim_B
make sim_V_BASIC
make sim_V_DPA

sed -i 's/B3D71S50_0/B3D71S50_1/g' project.tcl
sed -i 's/out_0/out_1/g' project.tcl
sed -i 's/B3D71S50_0/B3D71S50_1/g' ../Makefile
sed -i 's/out_0/out_1/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_1/B3D71S50_2/g' project.tcl
sed -i 's/out_1/out_2/g' project.tcl
sed -i 's/B3D71S50_1/B3D71S50_2/g' ../Makefile
sed -i 's/out_1/out_2/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_2/B3D71S50_3/g' project.tcl
sed -i 's/out_2/out_3/g' project.tcl
sed -i 's/B3D71S50_2/B3D71S50_3/g' ../Makefile
sed -i 's/out_2/out_3/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_3/B3D71S50_4/g' project.tcl
sed -i 's/out_3/out_4/g' project.tcl
sed -i 's/B3D71S50_3/B3D71S50_4/g' ../Makefile
sed -i 's/out_3/out_4/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_4/B3D71S50_5/g' project.tcl
sed -i 's/out_4/out_5/g' project.tcl
sed -i 's/B3D71S50_4/B3D71S50_5/g' ../Makefile
sed -i 's/out_4/out_5/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_5/B3D71S50_6/g' project.tcl
sed -i 's/out_5/out_6/g' project.tcl
sed -i 's/B3D71S50_5/B3D71S50_6/g' ../Makefile
sed -i 's/out_5/out_6/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_6/B3D71S50_7/g' project.tcl
sed -i 's/out_6/out_7/g' project.tcl
sed -i 's/B3D71S50_6/B3D71S50_7/g' ../Makefile
sed -i 's/out_6/out_7/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_7/B3D71S50_8/g' project.tcl
sed -i 's/out_7/out_8/g' project.tcl
sed -i 's/B3D71S50_7/B3D71S50_8/g' ../Makefile
sed -i 's/out_7/out_8/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_8/B3D71S50_9/g' project.tcl
sed -i 's/out_8/out_9/g' project.tcl
sed -i 's/B3D71S50_8/B3D71S50_9/g' ../Makefile
sed -i 's/out_8/out_9/g' ../Makefile
make sim_B
