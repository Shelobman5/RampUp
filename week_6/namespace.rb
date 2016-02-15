module Xml
	class Document
		def copy
			puts "I'm copying the XML document!"
		end
	end
end

module Pdf 
	class Document
		def copy
			puts "I'm pasting in the PDF document!"
		end
	end
end

pdf_document = Pdf::Document.new
puts pdf_document
puts pdf_document.copy

xml_document = Xml::Document.new
puts xml_document
puts xml_document.copy

