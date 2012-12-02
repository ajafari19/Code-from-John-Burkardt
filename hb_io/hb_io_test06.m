function hb_io_test06 ( )

%*****************************************************************************80
%
%% HB_IO_TEST06 tests HB_VALUES_WRITE;
%
  neltvl = 0;
  nnzero = 126;

  mxtype = 'RUA';
  output_file = 'rua_32_values.txt';
  valcrd = 13;
  valfmt = '(10F7.1)';
  values = [ ...
  101.0,  102.0,  103.0,  104.0,  107.0, ...
  126.0,  201.0,  202.0,  209.0,  221.0, ...
  228.0,  302.0,  303.0,  306.0,  308.0, ...
  309.0,  329.0,  403.0,  404.0,  405.0, ...
  412.0,  503.0,  505.0,  523.0,  527.0, ...
  601.0,  606.0,  616.0,  703.0,  707.0, ...
  714.0,  721.0,  731.0,  801.0,  808.0, ...
  812.0,  817.0,  827.0,  907.0,  909.0, ...
  910.0,  913.0,  919.0,  923.0,  927.0, ...
 1001.0, 1010.0, 1011.0, 1021.0, 1023.0, ...
 1025.0, 1027.0, 1102.0, 1111.0, 1115.0, ...
 1118.0, 1129.0, 1206.0, 1212.0, 1224.0, ...
 1311.0, 1313.0, 1403.0, 1414.0, 1502.0, ...
 1515.0, 1520.0, 1604.0, 1616.0, 1622.0, ...
 1704.0, 1716.0, 1717.0, 1806.0, 1810.0, ...
 1818.0, 1820.0, 1830.0, 1901.0, 1919.0, ...
 1926.0, 2008.0, 2016.0, 2020.0, 2103.0, ...
 2121.0, 2132.0, 2211.0, 2222.0, 2302.0, ...
 2317.0, 2321.0, 2323.0, 2412.0, 2424.0, ...
 2426.0, 2506.0, 2515.0, 2518.0, 2524.0, ...
 2525.0, 2613.0, 2618.0, 2622.0, 2626.0, ...
 2705.0, 2724.0, 2726.0, 2727.0, 2809.0, ...
 2828.0, 2903.0, 2905.0, 2927.0, 2929.0, ...
 2932.0, 3012.0, 3017.0, 3023.0, 3030.0, ...
 3113.0, 3114.0, 3131.0, 3224.0, 3228.0, ...
 3232.0 ]';

  fprintf ( 1, '\n' );
  fprintf ( 1, 'HB_IO_TEST06\n' );
  fprintf ( 1, '  HB_VALUES_WRITE writes the values of an HB file.\n' );
  fprintf ( 1, '\n' );
  fprintf ( 1, '  Writing the file "%s".\n', output_file );

  output_unit = fopen ( output_file, 'wt' );

  if ( output_unit < 0 )
    fprintf ( 1, '\n' );
    fprintf ( 1, 'HB_IO_TEST06 - Fatal error!\n' );
    fprintf ( 1, '  Error opening the file.\n' );
    return;
  end

  hb_values_write ( output_unit, valcrd, mxtype, nnzero, neltvl, ...
    valfmt, values );

  fclose ( output_unit );

  return
end