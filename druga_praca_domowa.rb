require 'net/smtp'

class DrugaPracaDomowa
  def first_task
     Array.new(6) { |i| i*i }
  end

  def second_task
    deciphered = "grgdm#5#gr#8#l#srgqlhv#gr#f}zduwhm#srwhjl".each_byte { |e| putc e-3 }
    ((2+5)**4).to_s.each_byte.collect { |e| (e+3).chr }.join
  end

  def third_task file_name = "pracadomowa.txt"
    IO.read(file_name)
  end

  def fourth_task
    smtp = Net::SMTP.start('your.smtp.server', 25)
    if smtp.method(:check_auth_args).arity == 2
      smtp.check_auth_args "user", "pass"
    else
      smtp.check_auth_args "user", "pass", :auth_type
    end
  end
end 