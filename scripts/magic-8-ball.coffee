# Description:
#   Magic 8 ball simulator
#
# Dependencies:
#   none
#
# Configuration:
#   none
#
# Commands:
#   hubot magic-8 <query> - Obtain a response from the Magic 8 Ball in english.
#   hubot bola-8 <frase> - Obtém uma resposta da bola 8 mágica em inglês
#
# Notes:
#   None
#
# Author:
#   raelga
#

magic8Esp = [
  'En mi opinión, sí',
  'Es cierto',
  'Es decididamente así',
  'Probablemente',
  'Buen pronóstico',
  'Todo apunta a que sí',
  'Sin duda',
  'Sí',
  'Sí - definitivamente',
  'Debes confiar en ello',
  'Respuesta vaga, vuelve a intentarlo',
  'Pregunta en otro momento',
  'Será mejor que no te lo diga ahora',
  'No puedo predecirlo ahora',
  'Concéntrate y vuelve a preguntar',
  'No cuentes con ello',
  'Mi respuesta es no',
  'Mis fuentes me dicen que no',
  'Las perspectivas no son buenas',
  'Muy dudoso'
]

magic8Br = [
  'É certo',
  'Com certeza que sim',
  'Sem nenhuma dúvida',
  'Sim, definitivamente',
  'Pode contar com isso',
  'Pelo que eu to vendo, sim',
  'Certamente',
  'Tá parecendo que sim',
  'Sim',
  'Tudo aponta que sim',
  'Tá meio confuso, pergunta de novo',
  'Pergunta de novo mais tarde',
  'Melhor não te dizer agora',
  'Não consigo prever agora',
  'Concentre-se e pergunte de novo',
  'Não conte com isso',
  'Minha resposta é não',
  'Minhas fontes dizem não',
  'Tá parecendo que não',
  'Duvido Muito',
  'Não'
]

magic8Eng = [
  'It is certain',
  'It is decidedly so',
  'Without a doubt',
  'Yes definitely',
  'You may rely on it',
  'As I see it, yes',
  'Most likely',
  'Outlook good',
  'Yes',
  'Signs point to yes',
  'Reply hazy try again',
  'Ask again later',
  'Better not tell you now',
  'Cannot predict now',
  'Concentrate and ask again',
  'Don\'t count on it',
  'My reply is no',
  'My sources say no',
  'Outlook not so good',
  'Very doubtful'
]

module.exports = (robot) ->

  robot.respond /magic-8 (.+)/i, (msg) ->
    msg.send msg.random magic8Eng

  robot.respond /bola-8 (.+)/i, (msg) ->
    msg.send msg.random magic8Br
