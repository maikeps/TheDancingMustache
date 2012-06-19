package DAO;

import java.util.ArrayList;
import model.Musica;
import util.ConjuntoResultados;
import util.MySQL;

public class MusicaDAO {

    public static ArrayList<Musica> top5Musicas() {

        ArrayList<Musica> lista = new ArrayList<Musica>();

        MySQL bancoDeDados = new MySQL();

        String sql = "select * from musica order by Visualizações desc limit 5";
        ConjuntoResultados linhas = bancoDeDados.executaSelect(sql);

        while (linhas.next()) {

            Musica m = new Musica();

            m.setCategoria(linhas.getString("Categoria"));
            m.setLetra(linhas.getString("Letra"));
            m.setTitulo(linhas.getString("Titulo"));
            m.setVisualizações(linhas.getString("Visualizações"));
            m.setAutor(linhas.getString("Autor"));
            m.setId(linhas.getInt("ID"));

            lista.add(m);

        }
        return lista;

    }

    public static ArrayList<Musica> listaMusicas() {

        ArrayList<Musica> lista = new ArrayList<Musica>();

        MySQL bancoDeDados = new MySQL();

        String sql = "select * from musica order by Visualizações desc";
        ConjuntoResultados linhas = bancoDeDados.executaSelect(sql);

        while (linhas.next()) {

            Musica m = new Musica();

            m.setCategoria(linhas.getString("Categoria"));
            m.setLetra(linhas.getString("Letra"));
            m.setTitulo(linhas.getString("Titulo"));
            m.setVisualizações(linhas.getString("Visualizações"));
            m.setId(linhas.getInt("ID"));
            m.setAutor(linhas.getString("Autor")); 
            
            lista.add(m);

        }
        return lista;

    }
    
    public static ArrayList<Musica> listaMusicasPorData() {

        ArrayList<Musica> lista = new ArrayList<Musica>();

        MySQL bancoDeDados = new MySQL();

        String sql = "select * from musica order by id desc";
        ConjuntoResultados linhas = bancoDeDados.executaSelect(sql);

        while (linhas.next()) {

            Musica m = new Musica();

            m.setCategoria(linhas.getString("Categoria"));
            m.setLetra(linhas.getString("Letra"));
            m.setTitulo(linhas.getString("Titulo"));
            m.setVisualizações(linhas.getString("Visualizações"));
            m.setId(linhas.getInt("ID"));
            m.setAutor(linhas.getString("Autor")); 
            
            lista.add(m);

        }
        return lista;

    }

    public static Musica getMusica(int id) {
        
        ArrayList<Musica> lista = new ArrayList<Musica>();

        MySQL bancoDeDados = new MySQL();

        String sql = "select * from musica where id = " + id;
        ConjuntoResultados linhas = bancoDeDados.executaSelect(sql);
        Musica m = new Musica();
        if(linhas.next()){
            
            m.setCategoria(linhas.getString("Categoria"));
            m.setLetra(linhas.getString("Letra"));
            m.setTitulo(linhas.getString("Titulo"));
            m.setVisualizações(linhas.getString("Visualizações"));
            m.setId(linhas.getInt("ID")); 
            m.setAutor(linhas.getString("Autor")); 
            
        } else {
            
        }
         
        return m;
    }
    
    public static ArrayList<Musica> getResultadoDaPesquisa(String titulo) {
        
        ArrayList<Musica> lista = new ArrayList<Musica>();

        MySQL bancoDeDados = new MySQL();

        String sql = "select * from musica where Titulo like \"%"+titulo+"%\"";
        ConjuntoResultados linhas = bancoDeDados.executaSelect(sql);

        while (linhas.next()) {

            Musica m = new Musica();

            m.setCategoria(linhas.getString("Categoria"));
            m.setLetra(linhas.getString("Letra"));
            m.setTitulo(linhas.getString("Titulo"));
            m.setVisualizações(linhas.getString("Visualizações"));
            m.setId(linhas.getInt("ID"));
            m.setAutor(linhas.getString("Autor")); 
            
            lista.add(m);

        }
        return lista;

    }
    
     public static ArrayList<Musica> getResultadoDaPesquisaLetra(String letra) {
        
        ArrayList<Musica> lista = new ArrayList<Musica>();

        MySQL bancoDeDados = new MySQL();

        String sql = "select * from musica where Letra like \"%"+letra+"%\"";
        ConjuntoResultados linhas = bancoDeDados.executaSelect(sql);

        while (linhas.next()) {

            Musica m = new Musica();

            m.setCategoria(linhas.getString("Categoria"));
            m.setLetra(linhas.getString("Letra"));
            m.setTitulo(linhas.getString("Titulo"));
            m.setVisualizações(linhas.getString("Visualizações"));
            m.setId(linhas.getInt("ID"));
            m.setAutor(linhas.getString("Autor")); 
            
            lista.add(m);

        }
        return lista;

    }

}