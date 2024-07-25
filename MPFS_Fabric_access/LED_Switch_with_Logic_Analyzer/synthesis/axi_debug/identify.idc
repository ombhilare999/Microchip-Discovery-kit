device jtagport builtin
# Mode and uc_groups are set to the recommended values. Ensure to check help docs and change them accordingly.
iice new {IICE} -type regular
iice controller -iice {IICE} none
iice sampler -iice {IICE} -compression 1
iice sampler -iice {IICE} -ram {type LSRAM}
iice sampler -iice {IICE} -depth 512
iice clock -iice {IICE} -edge positive  {/master/clk}
signals add -iice {IICE} -silent -sample {/master/outValid}\
{/master/dataOut}
signals add -iice {IICE} -silent -sample -trigger {/master/ready}

# Mode and uc_groups are set to the recommended values. Ensure to check help docs and change them accordingly.
iice new {output_leds} -type regular
iice controller -iice {output_leds} none
iice sampler -iice {output_leds} -compression 1
iice sampler -iice {output_leds} -ram {type LSRAM}
iice sampler -iice {output_leds} -depth 512
iice clock -iice {output_leds} -edge positive  {/slave/clk}
signals add -iice {output_leds} -silent -sample {/inSwitch}\
{/slave/outBit4}\
{/slave/outBit2}\
{/slave/outBit1}\
{/slave/outBit3}
signals add -iice {output_leds} -silent -sample -trigger {/slave/data}

