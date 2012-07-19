require 'wicked_pdf'

module Ruport
  class Formatter::WickedPDF < Formatter::HTML
    renders :pdf, :for =>[Controller::Row, Controller::Table,
                              Controller::Group, Controller::Grouping]

    def finalize_table
      output.replace(WickedPdf.new.pdf_from_string(output))
    end
  end
end