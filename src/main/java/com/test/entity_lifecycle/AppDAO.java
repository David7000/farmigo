package com.test.entity_lifecycle;

 
import com.test.entity_lifecycle.Producteur;
import java.util.List;
import com.test.entity_lifecycle.Client;
import com.test.entity_lifecycle.Produit;
import com.test.entity_lifecycle.Commande;
import com.test.entity_lifecycle.Famille;
import com.test.entity_lifecycle.LigneCommande;
import java.math.BigDecimal;
import org.json.simple.JSONObject;
/**
 * CRUD (pour create, read, update, delete) (parfois appelé SCRUD avec un "S" pour search)
 * Permet également de lister les éléments de la table utilisateur
 * Et aussi de se loguer 
 * 
 * @author karl
 */
public interface AppDAO {
    
    public void create( Client utilisateur );
    public Client readClient(String id);
    public void update(Client client);
    public void validerInscriptionParMail(String mail);
    public String pwdPerdu(String mail);
   
    
    public List<Produit> listerProduits(int id_famille);
    public List<Produit> listerParCategorie(int id_famille); 
    public List<Produit> listerParCategoriee(int id_famille); 
    public List<Produit> listerProduitParLigneCommande(List<LigneCommande> listLigneCommande);
    
    public List<Producteur> listerProducteur();     
    

        
    public int getIdClient(String login, String pwd);

    public boolean login(String login, String password);    
    public boolean verifExistLoginTemp( String mail); 
    public boolean verifExistLogin( String mail);  
   
    public void delete(String id);    
    public List<Client> search(String req);
    public List<Client> listerClient();
    
    public List<Commande> listerCommande(int id_client);
    public List<Commande> listerCommandeStatusPL(int id_client);
    
    public List<LigneCommande> listerLigneCommande(int id_commande);
    public void deleteLigneCommande(int id_lignecommande);
    public void updateStatusCommande(int id_commande, String etat);
    
    public void  insererLigneCommande(int id_lignecommande,int id_produit, String promotion, String quantite, String prix_soustotal, int id_commande );
    public Commande createCommande( String total, String date_commande, int id_client, String etat_cmd );
    
    public Commande verifExistCommandeEnCours(int id_client);
    
    public LigneCommande verifExistLigneCommande(int id_commande, int id_produit);
    
    public Produit getProduit(int id_produit);
    
    public Client getClient(int id_client);

    public JSONObject calculTotauxCommande(int id_lignecommande, int quantite,  String id_client);
    
    public void recalculerTotalCmd(int id_commande, BigDecimal sous_total);

    public List<Famille> listeFamille();
    
    public String calculTotalTVAproduit(int id_cmd, String tva);    
    public String clculerPrixTotalTVA(int id_cmd, String tva);
    public String clculerTotalTousTVA(int id_cmd);
    
    public String calculerCommandTotal(int id_cmd);
    
    public String getNbrLigneCmd(String id_client1);   
    public JSONObject getNbrLigneCmd2(String id_client1);
    
    public JSONObject getIDLigneCommandeAJAX(int id_client, int id_produit);
    
    public JSONObject calculTotalNbrDeProduitsPanier(String id_client);
    
    public int calculTotalNbrDeProduitsPanier222(int id_client);
   
    public JSONObject actionUserDeleteLigneCommande(String id_client); 
    
}