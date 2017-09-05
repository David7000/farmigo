package com.test.entity_lifecycle;

public class Produit {
    
    private int id_produit;
    private String nom;
    private String description;
    private String discount;
    private String photo;
    private String prix_unitaire;
    private String TVAproduit;
    private String prix;
    private int id_producteur;    
    private int id_famille;
      
    public int getId_famille() {
        return id_famille;
    }

    public void setId_famille(int id_famille) {
        this.id_famille = id_famille;
    }
      
    public String getTVAproduit() {
        return TVAproduit;
    }

    public void setTVAproduit(String TVAproduit) {
        this.TVAproduit = TVAproduit;
    }

    public String getPrix() {
        return prix;
    }

    public void setPrix(String prix) {
        this.prix = prix;
    }
    
    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public int getId_producteur() {
        return id_producteur;
    }

    public void setId_producteur(int id_producteur) {
        this.id_producteur = id_producteur;
    }

    
    public void setId_produit(int id_produit) {
        this.id_produit = id_produit;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setDiscount(String discount) {
        this.discount = discount;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public void setPrix_unitaire(String prix_unitaire) {
        this.prix_unitaire = prix_unitaire;
    }
    
    public int getId_produit() {
        return id_produit;
    }

    public String getDescription() {
        return description;
    }

    public String getDiscount() {
        return discount;
    }

    public String getPhoto() {
        return photo;
    }

    public String getPrix_unitaire() {
        return prix_unitaire;
    }

    public void setProducteur(int id_producteur) {
        this.id_producteur = id_producteur;
    }
     public int getProducteur() {
        return id_producteur;
    }
}
