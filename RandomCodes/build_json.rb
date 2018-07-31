def write_json(f, file_string, i, num_files)
  file = file_string
  f << "    {\n"
  file_name = File.basename(file)
  f << "      \"%s\": \"%d\", \n" % ['id', i] 
  f << "      \"%s\": \"%s\", \n" % ['nome', file_name.chomp('.mp4')] 
  f << "      \"%s\": \"%s\", \n" % ['nomeSemAcentos', file_name.chomp('.mp4')] 
  f << "      \"%s\": \"%s\", \n" % ['arquivosSinalizacoes', file.sub('../','')] 
  # f << "    \"%s\": \"%s\", \n" % ['arquivosSinalizacoes', file.sub('../','').sub(' ', '\ ')] 
  f << "      \"%s\": \"%s\" \n" % ['imagemPreVisualizacao', ''] 

  if (num_files-1) == i
    f << "    }\n"
  else
    f << "    },\n"
  end  
end

begin
  f = File.new('horas.json', 'w')
  f << "{ \n" \
    	  "  \"titulo\": \"Horas em LIBRAS\",\n" \
    	  "  \"tituloOpcoes\": \"\",\n" \
    	  "  \"arquivosSinais\": [\n"

  videos = [];

  dir_files = Dir.glob("../videos/horas/*.mp4")
  dir_files.each_with_index do |file, index|
    write_json(f, file, index, dir_files.size)
  end

  f << "  ]\n" \
       "}"

rescue => error
  puts error.message
ensure
  f.close
end