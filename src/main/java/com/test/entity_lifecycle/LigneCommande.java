 
package com.test.entity_lifecycle;
 
public class LigneCommande {
    
    private int id_lignecommande;    
    private int id_produit; 
    private String promotion;    
    private String quantite; 
    private String prix_soustotal; 
    private int id_commande;
    
    // ceci n'est la table LigneCommande
    private String photo = "img/img12.jpg";
    
    

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public int getId_lignecommande() {
        return id_lignecommande;
    }

    public void setId_lignecommande(int id_lignecommande) {
        this.id_lignecommande = id_lignecommande;
    }

    public int getId_produit() {
        return id_produit;
    }

    public void setId_produit(int id_produit) {
        this.id_produit = id_produit;
    }

    public String getPromotion() {
        return promotion;
    }

    public void setPromotion(String promotion) {
        this.promotion = promotion;
    }

    public String getQuantite() {
        return quantite;
    }

    public void setQuantite(String quantite) {
        this.quantite = quantite;
    }

    public String getPrix_soustotal() {
        return prix_soustotal;
    }

    public void setPrix_soustotal(String prix_soustotal) {
        this.prix_soustotal = prix_soustotal;
    }

    public int getId_commande() {
        return id_commande;
    }

    public void setId_commande(int id_commande) {
        this.id_commande = id_commande;
    }   
    
    @Override
    public String toString() {
        return "LigneCommande{" + "id_lignecommande=" + id_lignecommande + ", id_produit=" + id_produit + ", promotion=" + promotion + ", quantite=" + quantite + ", prix_soustotal=" + prix_soustotal + ", id_commande=" + id_commande + '}';
    }
    
}
