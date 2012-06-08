FILE(REMOVE_RECURSE
  "digital_swigPYTHON_wrap.cxx"
  "digital_swig.py"
  "CMakeFiles/digital_generated_swigs"
  "digital_chunks_to_symbols_bf.i"
  "digital_chunks_to_symbols_bc.i"
  "digital_chunks_to_symbols_sf.i"
  "digital_chunks_to_symbols_sc.i"
  "digital_chunks_to_symbols_if.i"
  "digital_chunks_to_symbols_ic.i"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/digital_generated_swigs.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
