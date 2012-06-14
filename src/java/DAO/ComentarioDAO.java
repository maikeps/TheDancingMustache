/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.util.ArrayList;
import model.Comentario;
import util.ConjuntoResultados;
import util.MySQL;

/**
 *
 * @author maike_p_santos
 */
public class ComentarioDAO {
    
    public static ArrayList<Comentario> listaComentarios(int musicaID) {
        ArrayList<Comentario> lista = new ArrayList<Comentario>();

        MySQL bancoDeDados = new MySQL();
        String sql = "select * from comentario where ID_musica = "+musicaID+" order by id desc";

        ConjuntoResultados linhas = bancoDeDados.executaSelect(sql);

        while (linhas.next()) {

            Comentario c = new Comentario();
            c.setNome(linhas.getString("Nome"));
            c.setComentario(linhas.getString("Comentario"));
            c.setId(linhas.getInt("ID"));
            c.setidMusica(linhas.getInt("ID_musica"));
            lista.add(c);
        }

        return lista;
    }

    
}
