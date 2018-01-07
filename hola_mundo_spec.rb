require_relative './hola_mundo'
#require './hola_mundo'

RSpec.describe 'hola mundo' do
	it 'Llamar al metodo' do
		expect(hola_mundo).to eq 'Hola mundo!'
	end
end

