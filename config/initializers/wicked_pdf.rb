if ENV['CI'] == 'true'
  WickedPdf.config = {
    :exe_path => ENV['WKHTMLTOPDF_PATH']
  }
end
