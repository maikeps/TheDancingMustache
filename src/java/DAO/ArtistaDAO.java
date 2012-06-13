package DAO;

import java.util.ArrayList;
import model.Artista;
import model.Musica;
import util.ConjuntoResultados;
import util.MySQL;

public class ArtistaDAO {

    public static ArrayList<Artista> top5Artistas() {
        ArrayList<Artista> lista = new ArrayList<Artista>();

        MySQL bancoDeDados = new MySQL();
        String sql = "select * from artista order by votos desc limit 5";

        ConjuntoResultados linhas = bancoDeDados.executaSelect(sql);

        while (linhas.next()) {

            Artista a = new Artista();
            a.setNome(linhas.getString("Nome"));
            a.setVotos(linhas.getInt("Votos"));
            a.setId(linhas.getInt("ID"));
            lista.add(a);
        }

        return lista;
    }

    public static ArrayList<Artista> listaArtistas() {
        ArrayList<Artista> lista = new ArrayList<Artista>();

        MySQL bancoDeDados = new MySQL();
        String sql = "select * from artista order by votos desc";

        ConjuntoResultados linhas = bancoDeDados.executaSelect(sql);

        while (linhas.next()) {

            Artista a = new Artista();
            a.setNome(linhas.getString("Nome"));
            a.setVotos(linhas.getInt("Votos"));
            a.setId(linhas.getInt("ID"));
            lista.add(a);
        }

        return lista;
    }
    
    public static ArrayList<Artista> listaArtistasPorData() {
        ArrayList<Artista> lista = new ArrayList<Artista>();

        MySQL bancoDeDados = new MySQL();
        String sql = "select * from artista order by id desc";

        ConjuntoResultados linhas = bancoDeDados.executaSelect(sql);

        while (linhas.next()) {

            Artista a = new Artista();
            a.setNome(linhas.getString("Nome"));
            a.setVotos(linhas.getInt("Votos"));
            a.setId(linhas.getInt("ID"));
            lista.add(a);
        }

        return lista;
    }

    public static Artista getArtista(int id) {

        MySQL bancoDeDados = new MySQL();

        String sql = "select * from artista where id = " + id;
        ConjuntoResultados linhas = bancoDeDados.executaSelect(sql);
        Artista a = new Artista();
        if (linhas.next()) {

            a.setNome(linhas.getString("Nome"));
            a.setVotos(linhas.getInt("Votos"));
            a.setId(linhas.getInt("ID"));


        } else {
        }

        return a;
    }

    public static ArrayList<Musica> getListaMusicasPorArtista(String autor) {

        ArrayList<Musica> lista = new ArrayList<Musica>();

        MySQL bancoDeDados = new MySQL();
        String sql = "select * from musica where Autor like \"%" + autor + "%\" "
               // + "order by visualizacoes desc"
                + "";

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
