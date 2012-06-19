/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import model.Usuario;
import util.ConjuntoResultados;
import util.MySQL;

/**
 *
 * @author maike_p_santos
 */
public class UsuarioDAO {

    public static Usuario fazLogin(String login, String senha) {

        Usuario u = new Usuario();

        MySQL bancoDeDados = new MySQL();

        String sql = "select * from usuario where login = \"" + login + "\" and senha = \"" + senha + "\"";
        ConjuntoResultados linhas = bancoDeDados.executaSelect(sql);

        if (linhas.next()) {

            u.setLogin(linhas.getString("Login"));
            u.setSenha(linhas.getString("Senha"));
            u.setEmail(linhas.getString("Email"));
            u.setID(linhas.getInt("ID"));

        } else {
        }

        return u;

    }
}
