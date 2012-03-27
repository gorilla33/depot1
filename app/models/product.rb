class Product < ActiveRecord::Base
	#проверка заполнения полей
	validates :title, :description, :image_url, :presence => true

	#проверка , что цена больше 1 цента
	validates :price, :numericality => {:greater_than_or_equal_to => 0.01}

	#проверка, что название книги не дублируется
	validates :title, :uniqueness => true

	#проверка, что URL картинки книги имеет правильный формат
	validates :image_url, :format => {
		:with => %r{\.(gif|jpg|png)$}i , 
		:message => 'must be a URL for GIF, JPG or PNG image.'
	}

end
