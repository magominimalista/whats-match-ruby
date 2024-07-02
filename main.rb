def formatar_whatsapp(numero)
  numero_limpo = numero.gsub(/\D/, '') # Remove caracteres não numéricos
  if numero_limpo.length == 11 
    "(#{numero_limpo[0..1]}) 9 #{numero_limpo[2..5]}-#{numero_limpo[6..-1]}"
  else
    nil # Retorna nil se o número não tiver 11 dígitos
  end
end

def verificar_whatsapp
  puts "Digite seu número de WhatsApp (com DDD):"
  numero = gets.chomp

  numero_formatado = formatar_whatsapp(numero)

  if numero_formatado
    puts "Seu WhatsApp é #{numero_formatado}."
  else
    puts "O número #{numero} não é um WhatsApp válido."
  end
end

verificar_whatsapp
