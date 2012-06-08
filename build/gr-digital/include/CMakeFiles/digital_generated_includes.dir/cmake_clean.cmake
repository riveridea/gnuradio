FILE(REMOVE_RECURSE
  "CMakeFiles/digital_generated_includes"
  "digital_chunks_to_symbols_bf.h"
  "digital_chunks_to_symbols_bc.h"
  "digital_chunks_to_symbols_sf.h"
  "digital_chunks_to_symbols_sc.h"
  "digital_chunks_to_symbols_if.h"
  "digital_chunks_to_symbols_ic.h"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/digital_generated_includes.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
