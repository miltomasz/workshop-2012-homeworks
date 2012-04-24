require 'net/smtp'

class DrugaPracaDomowa
  def self.first_task array_size
     Array.new(array_size) { |i| i*i }
  end

  def self.second_task ciphered_text
    deciphered = ciphered_text.each_byte { |e| putc e-3 }
    ((2+5)**4).to_s.each_byte.collect { |e| (e+3).chr }.join
  end

  def self.third_task file_name = "pracadomowa.txt"
    IO.read(file_name)
  end

  def self.fourth_task *args
    smtp = Net::SMTP.new('')
    if smtp.method(:check_auth_args).arity == 2
      smtp.send(:check_auth_args, args[0], args[1])
    else
      smtp.send(:check_auth_args, args[0], args[1], args[2])
    end
  end
end 

DrugaPracaDomowa.first_task 6
DrugaPracaDomowa.second_task "grgdm#5#gr#8#l#srgqlhv#gr#f}zduwhm#srwhjl"
DrugaPracaDomowa.third_task "README.md"
DrugaPracaDomowa.fourth_task "one", "two", "three"