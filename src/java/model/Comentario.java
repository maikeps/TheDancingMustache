
package model;

import java.util.ArrayList;

public class Comentario {

protected String nome;
protected int id;
protected int idMusica;
protected String comentario;
protected ArrayList<String> musicas;
protected String descricao;

    public Comentario(){
        
    }

    public Comentario(String nome, String comentario, int id, int idMusica) {
        this.nome = nome;
        this.comentario = comentario;
        this.id = id;
        this.idMusica = idMusica;
    }

    public String getComentario() {
        return comentario;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getidMusica() {
        return idMusica;
    }

    public void setidMusica(int idMusica) {
        this.idMusica = idMusica;
    }

    public ArrayList<String> getMusicas() {
        return musicas;
    }

    public void setMusicas(ArrayList<String> musicas) {
        this.musicas = musicas;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
    
    

        
}
