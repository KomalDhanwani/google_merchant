xml.entry do
  xml.tag! 'g:id', entry[:id]

  xml.tag! 'g:title' do
    xml.cdata!(" #{entry[:title]} ")
  end

  xml.tag! 'g:description' do
    xml.cdata!(" #{entry[:description]} ")
  end

  xml.tag! 'g:link' do
    xml.cdata!(" #{entry[:link]} ")
  end

  xml.tag! 'g:image_link' do
    xml.cdata!(" #{entry[:image_link]} ")
  end

  xml.tag! 'g:additional_image_link' do
    xml.cdata!(" #{entry[:additional_image_link]} ")
  end

  xml.tag! 'g:condition', entry[:condition]
  xml.tag! 'g:availability', entry[:availability]
  xml.tag! 'g:price', entry[:price]
  xml.tag! 'g:mpn', entry[:mpn]
  xml.tag! 'g:brand', entry[:brand]

  if entry[:google_product_category]
    xml.tag! 'g:google_product_category' do
      xml.cdata!(" #{entry[:google_product_category]} ")
    end
  end

  entry[:product_types].each do |product_type|
    xml.tag! 'g:product_type' do
      xml.cdata!(" #{product_type} ")
    end
  end
end
