
package model;

import java.util.ArrayList;

public class Artista {

protected String nome;
protected int id;
protected int votos;
protected ArrayList<String> musicas;
protected String descricao;

    public Artista(){
        
    }

    public Artista(String nome, int votos, int id) {
        this.nome = nome;
        this.votos = votos;
        this.id = id;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
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
    
    public int getVotos() {
        return votos;
    }

    public void setVotos(int votos) {
        this.votos = votos;
    }

    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    
}
