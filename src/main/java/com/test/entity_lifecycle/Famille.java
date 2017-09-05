
package com.test.entity_lifecycle;


public class Famille {
    
    private int id_famille;
    private String nom;
    private String img;

    public int getId_famille() {
        return id_famille;
    }

    public void setId_famille(int id_famille) {
        this.id_famille = id_famille;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    @Override
    public String toString() {
        return "Famille{" + "id_famille=" + id_famille + ", nom=" + nom + ", img=" + img + '}';
    }
     
}
