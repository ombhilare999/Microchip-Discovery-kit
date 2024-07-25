device jtagport builtin
# Mode and uc_groups are set to the recommended values. Ensure to check help docs and change them accordingly.
iice new {IICE} -type regular
iice controller -iice {IICE} none
iice sampler -iice {IICE} -compression 1
iice sampler -iice {IICE} -ram {type LSRAM}
iice sampler -iice {IICE} -depth 1024
iice clock -iice {IICE} -edge positive  {/clk}
signals add -iice {IICE} -silent -sample {/valid}\
{/outBit4}\
{/validAXI}\
{/outBit2}\
{/outBit1}\
{/outBit3}\
{/dataAXI}
signals add -iice {IICE} -silent -sample -trigger {/readyAXI}

