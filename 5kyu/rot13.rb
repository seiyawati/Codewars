# Rot13
# https://ja.wikipedia.org/wiki/ROT13

# ruby tr
# https://docs.ruby-lang.org/ja/latest/method/String/i/tr.html

# Linux
# https://morizyun.github.io/infrastructure/command-tr.html

def rot13(message)
  message.tr('a-zA-Z', 'n-za-mN-ZA-M')
end
