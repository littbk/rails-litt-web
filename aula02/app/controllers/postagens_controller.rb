class PostagensController < ApplicationController
    def home
        @todas = Postagem.all.order('created_at desc')
    end

    def create

       ##
        #titulo = params["titulo"]
        #conteudo = params["conteudo"]
        #autor = params["autor"]

        #p = Postagem.create()
        #p.titulo =  titulo
        #p.conteudo = conteudo
        #p.autor = autor
        #p.save

        valores = params.require("postagem").permit("titulo","conteudo","autor")
        Postagem.create(valores)

    end


end
