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

sed -i 's/B3D71S50_9/B3D71S50_10/g' project.tcl
sed -i 's/out_9/out_10/g' project.tcl
sed -i 's/B3D71S50_9/B3D71S50_10/g' ../Makefile
sed -i 's/out_9/out_10/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_10/B3D71S50_11/g' project.tcl
sed -i 's/out_10/out_11/g' project.tcl
sed -i 's/B3D71S50_10/B3D71S50_11/g' ../Makefile
sed -i 's/out_10/out_11/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_11/B3D71S50_12/g' project.tcl
sed -i 's/out_11/out_12/g' project.tcl
sed -i 's/B3D71S50_11/B3D71S50_12/g' ../Makefile
sed -i 's/out_11/out_12/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_12/B3D71S50_13/g' project.tcl
sed -i 's/out_12/out_13/g' project.tcl
sed -i 's/B3D71S50_12/B3D71S50_13/g' ../Makefile
sed -i 's/out_12/out_13/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_13/B3D71S50_14/g' project.tcl
sed -i 's/out_13/out_14/g' project.tcl
sed -i 's/B3D71S50_13/B3D71S50_14/g' ../Makefile
sed -i 's/out_13/out_14/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_14/B3D71S50_15/g' project.tcl
sed -i 's/out_14/out_15/g' project.tcl
sed -i 's/B3D71S50_14/B3D71S50_15/g' ../Makefile
sed -i 's/out_14/out_15/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_15/B3D71S50_16/g' project.tcl
sed -i 's/out_15/out_16/g' project.tcl
sed -i 's/B3D71S50_15/B3D71S50_16/g' ../Makefile
sed -i 's/out_15/out_16/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_16/B3D71S50_17/g' project.tcl
sed -i 's/out_16/out_17/g' project.tcl
sed -i 's/B3D71S50_16/B3D71S50_17/g' ../Makefile
sed -i 's/out_16/out_17/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_17/B3D71S50_18/g' project.tcl
sed -i 's/out_17/out_18/g' project.tcl
sed -i 's/B3D71S50_17/B3D71S50_18/g' ../Makefile
sed -i 's/out_17/out_18/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_18/B3D71S50_19/g' project.tcl
sed -i 's/out_18/out_19/g' project.tcl
sed -i 's/B3D71S50_18/B3D71S50_19/g' ../Makefile
sed -i 's/out_18/out_19/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_19/B3D71S50_20/g' project.tcl
sed -i 's/out_19/out_20/g' project.tcl
sed -i 's/B3D71S50_19/B3D71S50_20/g' ../Makefile
sed -i 's/out_19/out_20/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_20/B3D71S50_21/g' project.tcl
sed -i 's/out_20/out_21/g' project.tcl
sed -i 's/B3D71S50_20/B3D71S50_21/g' ../Makefile
sed -i 's/out_20/out_21/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_21/B3D71S50_22/g' project.tcl
sed -i 's/out_21/out_22/g' project.tcl
sed -i 's/B3D71S50_21/B3D71S50_22/g' ../Makefile
sed -i 's/out_21/out_22/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_22/B3D71S50_23/g' project.tcl
sed -i 's/out_22/out_23/g' project.tcl
sed -i 's/B3D71S50_22/B3D71S50_23/g' ../Makefile
sed -i 's/out_22/out_23/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_23/B3D71S50_24/g' project.tcl
sed -i 's/out_23/out_24/g' project.tcl
sed -i 's/B3D71S50_23/B3D71S50_24/g' ../Makefile
sed -i 's/out_23/out_24/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_24/B3D71S50_25/g' project.tcl
sed -i 's/out_24/out_25/g' project.tcl
sed -i 's/B3D71S50_24/B3D71S50_25/g' ../Makefile
sed -i 's/out_24/out_25/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_25/B3D71S50_26/g' project.tcl
sed -i 's/out_25/out_26/g' project.tcl
sed -i 's/B3D71S50_25/B3D71S50_26/g' ../Makefile
sed -i 's/out_25/out_26/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_26/B3D71S50_27/g' project.tcl
sed -i 's/out_26/out_27/g' project.tcl
sed -i 's/B3D71S50_26/B3D71S50_27/g' ../Makefile
sed -i 's/out_26/out_27/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_27/B3D71S50_28/g' project.tcl
sed -i 's/out_27/out_28/g' project.tcl
sed -i 's/B3D71S50_27/B3D71S50_28/g' ../Makefile
sed -i 's/out_27/out_28/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_28/B3D71S50_29/g' project.tcl
sed -i 's/out_28/out_29/g' project.tcl
sed -i 's/B3D71S50_28/B3D71S50_29/g' ../Makefile
sed -i 's/out_28/out_29/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_29/B3D71S50_30/g' project.tcl
sed -i 's/out_29/out_30/g' project.tcl
sed -i 's/B3D71S50_29/B3D71S50_30/g' ../Makefile
sed -i 's/out_29/out_30/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_30/B3D71S50_31/g' project.tcl
sed -i 's/out_30/out_31/g' project.tcl
sed -i 's/B3D71S50_30/B3D71S50_31/g' ../Makefile
sed -i 's/out_30/out_31/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_31/B3D71S50_32/g' project.tcl
sed -i 's/out_31/out_32/g' project.tcl
sed -i 's/B3D71S50_31/B3D71S50_32/g' ../Makefile
sed -i 's/out_31/out_32/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_32/B3D71S50_33/g' project.tcl
sed -i 's/out_32/out_33/g' project.tcl
sed -i 's/B3D71S50_32/B3D71S50_33/g' ../Makefile
sed -i 's/out_32/out_33/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_33/B3D71S50_34/g' project.tcl
sed -i 's/out_33/out_34/g' project.tcl
sed -i 's/B3D71S50_33/B3D71S50_34/g' ../Makefile
sed -i 's/out_33/out_34/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_34/B3D71S50_35/g' project.tcl
sed -i 's/out_34/out_35/g' project.tcl
sed -i 's/B3D71S50_34/B3D71S50_35/g' ../Makefile
sed -i 's/out_34/out_35/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_35/B3D71S50_36/g' project.tcl
sed -i 's/out_35/out_36/g' project.tcl
sed -i 's/B3D71S50_35/B3D71S50_36/g' ../Makefile
sed -i 's/out_35/out_36/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_36/B3D71S50_37/g' project.tcl
sed -i 's/out_36/out_37/g' project.tcl
sed -i 's/B3D71S50_36/B3D71S50_37/g' ../Makefile
sed -i 's/out_36/out_37/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_37/B3D71S50_38/g' project.tcl
sed -i 's/out_37/out_38/g' project.tcl
sed -i 's/B3D71S50_37/B3D71S50_38/g' ../Makefile
sed -i 's/out_37/out_38/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_38/B3D71S50_39/g' project.tcl
sed -i 's/out_38/out_39/g' project.tcl
sed -i 's/B3D71S50_38/B3D71S50_39/g' ../Makefile
sed -i 's/out_38/out_39/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_39/B3D71S50_40/g' project.tcl
sed -i 's/out_39/out_40/g' project.tcl
sed -i 's/B3D71S50_39/B3D71S50_40/g' ../Makefile
sed -i 's/out_39/out_40/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_40/B3D71S50_41/g' project.tcl
sed -i 's/out_40/out_41/g' project.tcl
sed -i 's/B3D71S50_40/B3D71S50_41/g' ../Makefile
sed -i 's/out_40/out_41/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_41/B3D71S50_42/g' project.tcl
sed -i 's/out_41/out_42/g' project.tcl
sed -i 's/B3D71S50_41/B3D71S50_42/g' ../Makefile
sed -i 's/out_41/out_42/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_42/B3D71S50_43/g' project.tcl
sed -i 's/out_42/out_43/g' project.tcl
sed -i 's/B3D71S50_42/B3D71S50_43/g' ../Makefile
sed -i 's/out_42/out_43/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_43/B3D71S50_44/g' project.tcl
sed -i 's/out_43/out_44/g' project.tcl
sed -i 's/B3D71S50_43/B3D71S50_44/g' ../Makefile
sed -i 's/out_43/out_44/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_44/B3D71S50_45/g' project.tcl
sed -i 's/out_44/out_45/g' project.tcl
sed -i 's/B3D71S50_44/B3D71S50_45/g' ../Makefile
sed -i 's/out_44/out_45/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_45/B3D71S50_46/g' project.tcl
sed -i 's/out_45/out_46/g' project.tcl
sed -i 's/B3D71S50_45/B3D71S50_46/g' ../Makefile
sed -i 's/out_45/out_46/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_46/B3D71S50_47/g' project.tcl
sed -i 's/out_46/out_47/g' project.tcl
sed -i 's/B3D71S50_46/B3D71S50_47/g' ../Makefile
sed -i 's/out_46/out_47/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_47/B3D71S50_48/g' project.tcl
sed -i 's/out_47/out_48/g' project.tcl
sed -i 's/B3D71S50_47/B3D71S50_48/g' ../Makefile
sed -i 's/out_47/out_48/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_48/B3D71S50_49/g' project.tcl
sed -i 's/out_48/out_49/g' project.tcl
sed -i 's/B3D71S50_48/B3D71S50_49/g' ../Makefile
sed -i 's/out_48/out_49/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_49/B3D71S50_50/g' project.tcl
sed -i 's/out_49/out_50/g' project.tcl
sed -i 's/B3D71S50_49/B3D71S50_50/g' ../Makefile
sed -i 's/out_49/out_50/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_50/B3D71S50_51/g' project.tcl
sed -i 's/out_50/out_51/g' project.tcl
sed -i 's/B3D71S50_50/B3D71S50_51/g' ../Makefile
sed -i 's/out_50/out_51/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_51/B3D71S50_52/g' project.tcl
sed -i 's/out_51/out_52/g' project.tcl
sed -i 's/B3D71S50_51/B3D71S50_52/g' ../Makefile
sed -i 's/out_51/out_52/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_52/B3D71S50_53/g' project.tcl
sed -i 's/out_52/out_53/g' project.tcl
sed -i 's/B3D71S50_52/B3D71S50_53/g' ../Makefile
sed -i 's/out_52/out_53/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_53/B3D71S50_54/g' project.tcl
sed -i 's/out_53/out_54/g' project.tcl
sed -i 's/B3D71S50_53/B3D71S50_54/g' ../Makefile
sed -i 's/out_53/out_54/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_54/B3D71S50_55/g' project.tcl
sed -i 's/out_54/out_55/g' project.tcl
sed -i 's/B3D71S50_54/B3D71S50_55/g' ../Makefile
sed -i 's/out_54/out_55/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_55/B3D71S50_56/g' project.tcl
sed -i 's/out_55/out_56/g' project.tcl
sed -i 's/B3D71S50_55/B3D71S50_56/g' ../Makefile
sed -i 's/out_55/out_56/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_56/B3D71S50_57/g' project.tcl
sed -i 's/out_56/out_57/g' project.tcl
sed -i 's/B3D71S50_56/B3D71S50_57/g' ../Makefile
sed -i 's/out_56/out_57/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_57/B3D71S50_58/g' project.tcl
sed -i 's/out_57/out_58/g' project.tcl
sed -i 's/B3D71S50_57/B3D71S50_58/g' ../Makefile
sed -i 's/out_57/out_58/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_58/B3D71S50_59/g' project.tcl
sed -i 's/out_58/out_59/g' project.tcl
sed -i 's/B3D71S50_58/B3D71S50_59/g' ../Makefile
sed -i 's/out_58/out_59/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_59/B3D71S50_60/g' project.tcl
sed -i 's/out_59/out_60/g' project.tcl
sed -i 's/B3D71S50_59/B3D71S50_60/g' ../Makefile
sed -i 's/out_59/out_60/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_60/B3D71S50_61/g' project.tcl
sed -i 's/out_60/out_61/g' project.tcl
sed -i 's/B3D71S50_60/B3D71S50_61/g' ../Makefile
sed -i 's/out_60/out_61/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_61/B3D71S50_62/g' project.tcl
sed -i 's/out_61/out_62/g' project.tcl
sed -i 's/B3D71S50_61/B3D71S50_62/g' ../Makefile
sed -i 's/out_61/out_62/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_62/B3D71S50_63/g' project.tcl
sed -i 's/out_62/out_63/g' project.tcl
sed -i 's/B3D71S50_62/B3D71S50_63/g' ../Makefile
sed -i 's/out_62/out_63/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_63/B3D71S50_64/g' project.tcl
sed -i 's/out_63/out_64/g' project.tcl
sed -i 's/B3D71S50_63/B3D71S50_64/g' ../Makefile
sed -i 's/out_63/out_64/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_64/B3D71S50_65/g' project.tcl
sed -i 's/out_64/out_65/g' project.tcl
sed -i 's/B3D71S50_64/B3D71S50_65/g' ../Makefile
sed -i 's/out_64/out_65/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_65/B3D71S50_66/g' project.tcl
sed -i 's/out_65/out_66/g' project.tcl
sed -i 's/B3D71S50_65/B3D71S50_66/g' ../Makefile
sed -i 's/out_65/out_66/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_66/B3D71S50_67/g' project.tcl
sed -i 's/out_66/out_67/g' project.tcl
sed -i 's/B3D71S50_66/B3D71S50_67/g' ../Makefile
sed -i 's/out_66/out_67/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_67/B3D71S50_68/g' project.tcl
sed -i 's/out_67/out_68/g' project.tcl
sed -i 's/B3D71S50_67/B3D71S50_68/g' ../Makefile
sed -i 's/out_67/out_68/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_68/B3D71S50_69/g' project.tcl
sed -i 's/out_68/out_69/g' project.tcl
sed -i 's/B3D71S50_68/B3D71S50_69/g' ../Makefile
sed -i 's/out_68/out_69/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_69/B3D71S50_70/g' project.tcl
sed -i 's/out_69/out_70/g' project.tcl
sed -i 's/B3D71S50_69/B3D71S50_70/g' ../Makefile
sed -i 's/out_69/out_70/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_70/B3D71S50_71/g' project.tcl
sed -i 's/out_70/out_71/g' project.tcl
sed -i 's/B3D71S50_70/B3D71S50_71/g' ../Makefile
sed -i 's/out_70/out_71/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_71/B3D71S50_72/g' project.tcl
sed -i 's/out_71/out_72/g' project.tcl
sed -i 's/B3D71S50_71/B3D71S50_72/g' ../Makefile
sed -i 's/out_71/out_72/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_72/B3D71S50_73/g' project.tcl
sed -i 's/out_72/out_73/g' project.tcl
sed -i 's/B3D71S50_72/B3D71S50_73/g' ../Makefile
sed -i 's/out_72/out_73/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_73/B3D71S50_74/g' project.tcl
sed -i 's/out_73/out_74/g' project.tcl
sed -i 's/B3D71S50_73/B3D71S50_74/g' ../Makefile
sed -i 's/out_73/out_74/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_74/B3D71S50_75/g' project.tcl
sed -i 's/out_74/out_75/g' project.tcl
sed -i 's/B3D71S50_74/B3D71S50_75/g' ../Makefile
sed -i 's/out_74/out_75/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_75/B3D71S50_76/g' project.tcl
sed -i 's/out_75/out_76/g' project.tcl
sed -i 's/B3D71S50_75/B3D71S50_76/g' ../Makefile
sed -i 's/out_75/out_76/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_76/B3D71S50_77/g' project.tcl
sed -i 's/out_76/out_77/g' project.tcl
sed -i 's/B3D71S50_76/B3D71S50_77/g' ../Makefile
sed -i 's/out_76/out_77/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_77/B3D71S50_78/g' project.tcl
sed -i 's/out_77/out_78/g' project.tcl
sed -i 's/B3D71S50_77/B3D71S50_78/g' ../Makefile
sed -i 's/out_77/out_78/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_78/B3D71S50_79/g' project.tcl
sed -i 's/out_78/out_79/g' project.tcl
sed -i 's/B3D71S50_78/B3D71S50_79/g' ../Makefile
sed -i 's/out_78/out_79/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_79/B3D71S50_80/g' project.tcl
sed -i 's/out_79/out_80/g' project.tcl
sed -i 's/B3D71S50_79/B3D71S50_80/g' ../Makefile
sed -i 's/out_79/out_80/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_80/B3D71S50_81/g' project.tcl
sed -i 's/out_80/out_81/g' project.tcl
sed -i 's/B3D71S50_80/B3D71S50_81/g' ../Makefile
sed -i 's/out_80/out_81/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_81/B3D71S50_82/g' project.tcl
sed -i 's/out_81/out_82/g' project.tcl
sed -i 's/B3D71S50_81/B3D71S50_82/g' ../Makefile
sed -i 's/out_81/out_82/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_82/B3D71S50_83/g' project.tcl
sed -i 's/out_82/out_83/g' project.tcl
sed -i 's/B3D71S50_82/B3D71S50_83/g' ../Makefile
sed -i 's/out_82/out_83/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_83/B3D71S50_84/g' project.tcl
sed -i 's/out_83/out_84/g' project.tcl
sed -i 's/B3D71S50_83/B3D71S50_84/g' ../Makefile
sed -i 's/out_83/out_84/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_84/B3D71S50_85/g' project.tcl
sed -i 's/out_84/out_85/g' project.tcl
sed -i 's/B3D71S50_84/B3D71S50_85/g' ../Makefile
sed -i 's/out_84/out_85/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_85/B3D71S50_86/g' project.tcl
sed -i 's/out_85/out_86/g' project.tcl
sed -i 's/B3D71S50_85/B3D71S50_86/g' ../Makefile
sed -i 's/out_85/out_86/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_86/B3D71S50_87/g' project.tcl
sed -i 's/out_86/out_87/g' project.tcl
sed -i 's/B3D71S50_86/B3D71S50_87/g' ../Makefile
sed -i 's/out_86/out_87/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_87/B3D71S50_88/g' project.tcl
sed -i 's/out_87/out_88/g' project.tcl
sed -i 's/B3D71S50_87/B3D71S50_88/g' ../Makefile
sed -i 's/out_87/out_88/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_88/B3D71S50_89/g' project.tcl
sed -i 's/out_88/out_89/g' project.tcl
sed -i 's/B3D71S50_88/B3D71S50_89/g' ../Makefile
sed -i 's/out_88/out_89/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_89/B3D71S50_90/g' project.tcl
sed -i 's/out_89/out_90/g' project.tcl
sed -i 's/B3D71S50_89/B3D71S50_90/g' ../Makefile
sed -i 's/out_89/out_90/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_90/B3D71S50_91/g' project.tcl
sed -i 's/out_90/out_91/g' project.tcl
sed -i 's/B3D71S50_90/B3D71S50_91/g' ../Makefile
sed -i 's/out_90/out_91/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_91/B3D71S50_92/g' project.tcl
sed -i 's/out_91/out_92/g' project.tcl
sed -i 's/B3D71S50_91/B3D71S50_92/g' ../Makefile
sed -i 's/out_91/out_92/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_92/B3D71S50_93/g' project.tcl
sed -i 's/out_92/out_93/g' project.tcl
sed -i 's/B3D71S50_92/B3D71S50_93/g' ../Makefile
sed -i 's/out_92/out_93/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_93/B3D71S50_94/g' project.tcl
sed -i 's/out_93/out_94/g' project.tcl
sed -i 's/B3D71S50_93/B3D71S50_94/g' ../Makefile
sed -i 's/out_93/out_94/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_94/B3D71S50_95/g' project.tcl
sed -i 's/out_94/out_95/g' project.tcl
sed -i 's/B3D71S50_94/B3D71S50_95/g' ../Makefile
sed -i 's/out_94/out_95/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_95/B3D71S50_96/g' project.tcl
sed -i 's/out_95/out_96/g' project.tcl
sed -i 's/B3D71S50_95/B3D71S50_96/g' ../Makefile
sed -i 's/out_95/out_96/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_96/B3D71S50_97/g' project.tcl
sed -i 's/out_96/out_97/g' project.tcl
sed -i 's/B3D71S50_96/B3D71S50_97/g' ../Makefile
sed -i 's/out_96/out_97/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_97/B3D71S50_98/g' project.tcl
sed -i 's/out_97/out_98/g' project.tcl
sed -i 's/B3D71S50_97/B3D71S50_98/g' ../Makefile
sed -i 's/out_97/out_98/g' ../Makefile
make sim_B

sed -i 's/B3D71S50_98/B3D71S50_99/g' project.tcl
sed -i 's/out_98/out_99/g' project.tcl
sed -i 's/B3D71S50_98/B3D71S50_99/g' ../Makefile
sed -i 's/out_98/out_99/g' ../Makefile
make sim_B