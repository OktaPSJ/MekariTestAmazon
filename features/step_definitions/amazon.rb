require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome

Given('Mengakses Website amazon pendaftaran') do
  driver.navigate.to "http://amazon.com"
  driver.manage().window().maximize();
  driver.find_element(:xpath, '//*[@id="nav-link-accountList"]').click
  driver.find_element(:xpath, '//*[@id="createAccountSubmit"]').click
end

When('Mengisi field pendaftaran') do
  driver.find_element(:xpath, '//*[@id="ap_customer_name"]').send_keys('Oktapain Saepul Jaman')
  driver.find_element(:xpath, '//*[@id="ap_email"]').send_keys('oktapsj1804@gmail.com')
  driver.find_element(:xpath, '//*[@id="ap_password"]').send_keys('oktapian.SJ1804#')
  driver.find_element(:xpath, '//*[@id="ap_password_check"]').send_keys('oktapian.SJ1804#')
  driver.find_element(:xpath, '//*[@id="continue"]').click
end


Given('Mengakses website amazon login') do
  driver.navigate.to "http://amazon.com"
  driver.manage().window().maximize();
  driver.find_element(:xpath, '//*[@id="nav-link-accountList"]').click
end

When('Mengisi field login') do
  driver.find_element(:xpath, '//*[@id="ap_email"]').send_keys('oktapsj.bolt@gmail.com')

  driver.find_element(:xpath, '//*[@id="continue"]').click

  #Mengisi password
  driver.find_element(:xpath, '//*[@id="ap_password"]').send_keys('oktapian.SJ1804')
  driver.find_element(:xpath, '//*[@id="signInSubmit"]').click

  sleep 1


end

Then('Halaman Awal Amazon') do
  if driver.find_element(:id, 'nav-recently-viewed')
   puts 'Selamat Anda Berhasil Login'
  else
    puts 'Anda Kurang Beruntung pasti kena OTP terus'
  end
end

