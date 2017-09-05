package com.test.entity_lifecycle;

public class Client {

    private int id_client;
    private String login;
    private String password;
    private String nom;
    private String prenom;
    private String adresse;
    private String telephone;
    private String date_validate;

    public String getDate_validate() {
        return date_validate;
    }

    public void setDate_validate(String date_validate) {
        this.date_validate = date_validate;
    }

    public int  getId_client() {
        return id_client;
    }

    public void setId_client(int id_client) {
        this.id_client = id_client;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getLogin() {
        return login;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPassword() {
        return password;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getAdresse() {
        return adresse;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    @Override
    public String toString() {
        return "Client{ login=" + login + ", password=" + password + ", nom=" + nom + ", prenom=" + prenom + ", adresse=" + adresse + ", telephone=" + telephone + "}";
    }

}
