package com.test.entity_lifecycle;

public class Commande {
    
    private int id_commande;
    private String total;
    private String date_commande;
    private int id_client;
    private String etat_cmd = Commande.EtatCommande.ENCOURS;
    
    static class EtatCommande {
        static final String PAYE="PAYE";
        static final String LIVRE="LIVRE";
        static final String ENCOURS="ENCOURS";
    }

    public int getId_commande() {
        return id_commande;
    }

    public void setId_commande(int id_commande) {
        this.id_commande = id_commande;
    }

    public String getTotal() {
        return total;
    }

    public void setTotal(String total) {
        this.total = total;
    }

    public String getDate_commande() {
        return date_commande;
    }

    public void setDate_commande(String date_commande) {
        this.date_commande = date_commande;
    }

    public int getId_client() {
        return id_client;
    }

    public void setId_client(int id_client) {
        this.id_client = id_client;
    }

    public String getEtat_cmd() {
        return etat_cmd;
    }

    public void setEtat_cmd(String etat_cmd) {
        this.etat_cmd = etat_cmd;
    }
   
     @Override
    public String toString() {
        return "Commande{" + "id_commande=" + id_commande + ", total=" + total + ", date_commande=" + date_commande + ", id_client=" + id_client + ", etat_cmd=" + etat_cmd + '}';
    }

}
