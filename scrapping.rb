
require 'nokogiri'
require 'open-uri'

=begin
url = 'http://www.reactiongifs.com/'
5.times do |i|
  puts "Página #{i}"
  document = Nokogiri::HTML(open(url))
  div_main = document.css('div#main')
  div_main.css('div.post').each do |post|
    puts post.css('h2').text
    puts post.css('div.entry img').attr('src')
  end
  url = document.css('div.nav-entries div.nav-next a').attr('href')
end

url = 'http://devhack.co/'
1.times do |i|
  document = Nokogiri::HTML(open(url))
  div_main = document.css('section#mentors')
  div_main.css('div.team-member').each do |mix|
  	img = mix.css('div.member-photo img').attr('src')
  	img.include?('../../') ? imgurl = url + img : imgurl = img
  	puts imgurl
  	puts mix.css('div.basic-info h4').text
  end
end
=end
url = 'http://www.reactiongifs.com/'
5.times do |i|
  puts "Página #{i}"
  document = Nokogiri::HTML(open(url))
  div_main = document.css('div#main')
  div_main.css('div.post').each do |post|
    title = post.css('h2').text
    gif_url = post.css('div.entry img').attr('src')
    File.open("gifs/#{title}.gif", 'w') do |new_file|
      puts "Descargando gif: #{title}"
      open(gif_url, 'r') do |gif|
        new_file.write(gif.read)
      end
    end
  end
  url = document.css('div.nav-entries div.nav-next a').attr('href')
end
=begin

url = 'http://devhack.co/'
1.times do |i|
  document = Nokogiri::HTML(open(url))
  div_main = document.css('section#mentors')
  div_main.css('div.team-member').each do |mix|
  	img = mix.css('div.member-photo img').attr('src')
  	img.include?('../../') ? imgurl = url + img : imgurl = img
  	title = mix.css('div.basic-info h4').text
  	
  	puts imgurl
  	if imgurl.include?('http')
	  	File.open("gifs/#{title}", 'w') do |new_file|
	      puts "Descargando gif: #{title}"
	      open(imgurl, 'r') do |gif|
	        new_file.write(gif.read)
	      end
	    end
	end	
  end
end
=end
