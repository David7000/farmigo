package com.test.entity_lifecycle;

public  class Producteur {

    private String id_producteur;
    private String nom;
    private String adresse;
    private String photo;

    public String getId_producteur() {
        return id_producteur;
    }

    public void setId_producteur(String id_producteur) {
        this.id_producteur = id_producteur;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getAdresse() {
        return adresse;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }
    
}
