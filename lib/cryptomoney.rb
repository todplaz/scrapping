def crypto_names (array)

	crypto_nameS = page.css('//div[@class="sc-1kxikfi-0 fjclfm cmc-table__column-name"]')
	array = []
	crypto_nameS.each do |crypto_nameS|
    array << crypto_nameS.text
	end
end


def crypto_prices (array_1)

	crypto_priceS = page.xpath('//td[@class="cmc-table__cell cmc-table__cell--sortable cmc-table__cell--right cmc-table__cell--sort-by__price"]/a')
	array_1 = []
	crypto_priceS.each do |crypto_priceS|

    array_1 << crypto_priceS.text
	end
end

result = Hash[array.zip(array_1)]

print result
