package model;

public class Usuario {

    int ID;
    String login, senha, email;
    
    
    public Usuario(){
    
    }
    
    public Usuario(int id, String login, String senha, String email){
        this.login = login;
        this.senha = senha;
        this.email = email;
        this.ID = id;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }
    
    
}
