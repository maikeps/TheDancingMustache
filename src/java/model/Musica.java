
package model;

public class Musica {
    
    protected int id;
    protected String titulo;
    protected String letra;
    protected String autor;
    protected String categoria;
    protected String visualizações;

    public Musica(){
        
    }
    
    public Musica(String titulo, String letra, String autor, String categoria, int id) {
        this.titulo = titulo;
        this.letra = letra;
        this.autor = autor;
        this.categoria = categoria;
        this.id = id;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public String getLetra() {
        return letra;
    }

    public void setLetra(String letra) {
        this.letra = letra;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getVisualizações() {
        return visualizações;
    }

    public void setVisualizações(String visualizações) {
        this.visualizações = visualizações;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    
    
}
