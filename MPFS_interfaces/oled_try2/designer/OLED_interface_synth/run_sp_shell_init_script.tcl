set_device \
    -family  PolarFireSoC \
    -die     PA5SOC095T \
    -package fcsg325 \
    -speed   -1 \
    -tempr   {EXT} \
    -voltr   {EXT}
set_def {VOLTAGE} {1.0}
set_def {VCCI_1.2_VOLTR} {EXT}
set_def {VCCI_1.5_VOLTR} {EXT}
set_def {VCCI_1.8_VOLTR} {EXT}
set_def {VCCI_2.5_VOLTR} {EXT}
set_def {VCCI_3.3_VOLTR} {EXT}
set_def {PLL_SUPPLY} {}
set_def {VPP_SUPPLY_25_33} {VPP_SUPPLY_33}
set_def {VDDAUX_SUPPLY_25_33} {VDDAUX_SUPPLY_25}
set_def USE_CONSTRAINTS_FLOW 1
set_netlist -afl {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/git_repo/MPFS-Disco-Kit/MPFS_interfaces/oled_try2/designer/OLED_interface_synth/OLED_interface_synth.afl} -adl {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/git_repo/MPFS-Disco-Kit/MPFS_interfaces/oled_try2/designer/OLED_interface_synth/OLED_interface_synth.adl}
set_placement   {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/git_repo/MPFS-Disco-Kit/MPFS_interfaces/oled_try2/designer/OLED_interface_synth/OLED_interface_synth.loc}
set_routing     {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/git_repo/MPFS-Disco-Kit/MPFS_interfaces/oled_try2/designer/OLED_interface_synth/OLED_interface_synth.seg}
set_sdcfilelist -sdc {/home/ombhilare999/omkar/UofT/summer/summer-ta/ECE532/git_repo/MPFS-Disco-Kit/MPFS_interfaces/oled_try2/constraint/user.sdc}
