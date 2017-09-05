package com.test.entity_lifecycle;

import com.test.entity_lifecycle.AppDAO;
import com.test.entity_lifecycle.Producteur;
import com.test.entity_lifecycle.Produit;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.test.entity_lifecycle.Client;
import com.test.entity_lifecycle.Commande;
import com.test.entity_lifecycle.Famille;
import com.test.entity_lifecycle.LigneCommande;
import java.text.DateFormat;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import org.json.simple.JSONObject;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.NumberFormat;
import java.util.Locale;

public class AppDaoImpl implements AppDAO {

    private DaoFactory daoFactory;

    private static AppDaoImpl singleton = null;

    AppDaoImpl(DaoFactory daoFactory) {
        this.daoFactory = daoFactory;
    }

    public static AppDAO getInstanceSingleton(DaoFactory daoFactory) {

        if (singleton == null) {
            singleton = new AppDaoImpl(daoFactory);

        } else {
            return singleton;
        }
        return singleton;
    }

    
    @Override
    public List<Produit> listerProduits(int id_famille) {       
        List<Produit> produits = new ArrayList<Produit>();
        Connection connexion = null;
        Statement statement = null;
        ResultSet resultat = null;
        
        if (id_famille!=0){
        
               return listerParCategorie( id_famille);
        }
        
        try {
            connexion = daoFactory.getConnection();
            statement = connexion.createStatement();
            resultat = statement.executeQuery("SELECT id_produit, description, discount, photo, prix_unitaire, id_producteur, TVA  FROM produit;");

            while (resultat.next()) {

                int id_produit = resultat.getInt("id_produit");
                String description = resultat.getString("description");
                String discount = resultat.getString("discount");
                String photo = resultat.getString("photo");
                String prix_unitaire = resultat.getString("prix_unitaire");
                int id_producteur = resultat.getInt("id_producteur");
                String tva = resultat.getString("TVA");
                
                Produit produit = new Produit();

                produit.setId_produit(id_produit);
                produit.setDescription(description);
                produit.setDiscount(discount);
                produit.setPhoto(photo);
                produit.setPrix_unitaire(prix_unitaire);
                produit.setProducteur(id_producteur);
                produit.setTVAproduit(tva);
                
                produits.add(produit);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return produits;
    }
     
    @Override      
    public List<Produit> listerParCategorie(int id_famille) {
        List<Produit> produits = new ArrayList<Produit>();
        Connection connexion = null;
        Statement statement = null;
        ResultSet resultat = null;

      //  System.out.println("1.DEBUG: listerParCategorie()");
        
        try {
            connexion = daoFactory.getConnection();
            statement = connexion.createStatement();
            resultat = statement.executeQuery("SELECT id_produit, description, discount, photo, prix_unitaire, id_producteur  FROM produit WHERE id_famille='"+id_famille+"';");
            
       // System.out.println("2.DEBUG: listerParCategorie()");
            
            while (resultat.next()) {
               // System.out.println("3.DEBUG: listerParCategorie()");
                
                int id_produit = resultat.getInt("id_produit");
                String description = resultat.getString("description");
                String discount = resultat.getString("discount");
                String photo = resultat.getString("photo");
                String prix_unitaire = resultat.getString("prix_unitaire");
                int id_producteur = resultat.getInt("id_producteur");
                
                Produit produit = new Produit();

                produit.setId_produit(id_produit);
                produit.setDescription(description);
                produit.setDiscount(discount);
                produit.setPhoto(photo);
                produit.setPrix_unitaire(prix_unitaire);
                produit.setProducteur(id_producteur);
                
                produits.add(produit);
                
             //   System.out.println("4.DEBUG: listerParCategorie()");
            }
              //  System.out.println("5.DEBUG: listerParCategorie()");
            
        } catch (Exception e) {
                 System.out.println("6.DEBUG:Exception listerParCategorie()");
            e.printStackTrace();
        }
        return produits;
    }
 
    
    
    
    
    
    
    @Override
    public List<Produit> listerParCategoriee(int id_producteur) {
        List<Produit> produits = new ArrayList<Produit>();
        Connection connexion = null;
        Statement statement = null;
        ResultSet resultat = null;

        System.out.println("1.DEBUG: listerParCategorie()");
        
        try {
            connexion = daoFactory.getConnection();
            statement = connexion.createStatement();
            resultat = statement.executeQuery("SELECT id_produit, description, discount, photo, prix_unitaire, id_famille  FROM produit WHERE id_producteur='"+id_producteur+"';");
             
        System.out.println("2.DEBUG: listerParCategorie()");
            
            while (resultat.next()) {
                System.out.println("3.DEBUG: listerParCategorie()");
                
                int id_produit = resultat.getInt("id_produit");
                String description = resultat.getString("description");
                String discount = resultat.getString("discount");
                String photo = resultat.getString("photo");
                String prix_unitaire = resultat.getString("prix_unitaire");
                int id_famille = resultat.getInt("id_famille");
                
                Produit produit = new Produit();

                produit.setId_produit(id_produit);
                produit.setDescription(description);
                produit.setDiscount(discount);
                produit.setPhoto(photo);
                produit.setPrix_unitaire(prix_unitaire);
                produit.setId_famille(id_famille);
                
                produits.add(produit);
                
                System.out.println("4.DEBUG: listerParCategorie()");
            }
                System.out.println("5.DEBUG: listerParCategorie()");
                  
             
             
        } catch (Exception e) {
                 System.out.println("6.DEBUG:Exception listerParCategorie()");
            e.printStackTrace();
        }
        return produits;
        
    }
      
    
    
    
    
    
    
 
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
     @Override
    public List<Producteur> listerProducteur() {
        List<Producteur> producteurs = new ArrayList<Producteur>();
        Connection connexion = null;
        Statement statement = null;
        ResultSet resultat = null;

        try {
            connexion = daoFactory.getConnection();
            statement = connexion.createStatement();
            resultat = statement.executeQuery("SELECT 	id_producteur, nom, adresse, photo FROM producteur;");

            while (resultat.next()) {

                String id_producteur = resultat.getString("id_producteur");
                String nom = resultat.getString("nom");
                String adresse = resultat.getString("adresse");
                String photo = resultat.getString("photo");
                 
                Producteur producteur = new Producteur();

                producteur.setId_producteur(id_producteur);
                producteur.setNom(nom);
                producteur.setAdresse(adresse);
                producteur.setPhoto(photo);
  
                producteurs.add(producteur);
System.out.println("DEBUG: create: DateFormat=" + resultat);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return producteurs;
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    @Override
    public void create(Client client) {

        Connection connexion = null;
        PreparedStatement preparedStatement = null;

        try {
            connexion = daoFactory.getConnection();
            preparedStatement = connexion.prepareStatement("INSERT INTO client_tmp(login, password, nom, prenom, adresse, telephone ) VALUES(?, ?, ?, ?, ?, ?);");
            preparedStatement.setString(1, client.getLogin());
            preparedStatement.setString(2, client.getPassword());
            preparedStatement.setString(3, client.getNom());
            preparedStatement.setString(4, client.getPrenom());
            preparedStatement.setString(5, client.getAdresse());
            preparedStatement.setString(6, client.getTelephone());
            
            //DATE : http://jmdoudoux.developpez.com/cours/developpons/java/chap-utilisation_dates.php
            
            //            DateFormat shortDateFormat = DateFormat.getDateTimeInstance(DateFormat.SHORT, DateFormat.SHORT);
            //            System.out.println("DEBUG: create: DateFormat=" + shortDateFormat);
            //            Calendar calendar = Calendar.getInstance();
            //
            //            SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy HH:mm");
            //            System.out.println("DEBUG: create: " + sdf);
 
            //            calendar.add(Calendar.MONTH, 1);
            //            System.out.println("DEBUG: create: " + sdf.format(calendar.getTime()));
            
            /*
            Pour les opérations sur les dates, Calendar dispose des constantes suivantes:
            Calendar.DATE: ajouter/soustraire un jour
            Calendar.MONTH: ajouter/soustraire un mois
            Calendar.YEAR: ajouter/soustraire une année
            En 2ème paramètre de la fonction Add de Calendar, un nombre positif ajouter une durée, un nombre négatif soustrait une durée.

             */
       
           //preparedStatement.setString(5, sdf.format(calendar.getTime()));
           
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    
    
    
    
    
    
    
    
    
     @Override
    public List<Client> search(String req) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }   
    
    
    
    /**
     * methode appelée lors de la validation par mail de l'inscription
     *
     * @param utilisateur
     */
    public void createValidate(String login) {

        // Si la date de peremption de la requête est valide
        // fait le transfert de la table tmp vers la table permanente
        // et supprime l'enregistrement dans la table tmp si tout c'est bien passé
        // Si problème alors envoi une page de explications 
    }

    
    @Override
    public void delete(String login) {
        Connection connexion = null;

        try {
            connexion = daoFactory.getConnection();

            String query = "DELETE FROM client WHERE login = ?";

            PreparedStatement preparedStmt = connexion.prepareStatement(query);

            preparedStmt.setString(1, login);

            preparedStmt.execute();

            connexion.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }


    
    
    
    

    @Override
    public List<Client> listerClient() {
        List<Client> utilisateurs = new ArrayList<Client>();
        Connection connexion = null;
        Statement statement = null;
        ResultSet resultat = null;

        try {
            connexion = daoFactory.getConnection();
            statement = connexion.createStatement();
            resultat = statement.executeQuery("SELECT login, password, nom, prenom FROM client;");

            while (resultat.next()) {

                String login = resultat.getString("login");
                String password = resultat.getString("password");
                String nom = resultat.getString("nom");
                String prenom = resultat.getString("prenom");

                Client client = new Client();

                client.setLogin(login);
                client.setPassword(password);
                client.setNom(nom);
                client.setPrenom(prenom);

                utilisateurs.add(client);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return utilisateurs;
    }    
    
     
    public Client readClient(String login) {

        Connection connexion = null;

        Client client = new Client();

        client.setLogin("login");
        client.setPassword("password");
        client.setNom("nom");
        client.setPrenom("prenom");
        client.setAdresse("adresse");
        client.setTelephone("telephone");        
        

        try {
            connexion = daoFactory.getConnection();
            Statement statement = connexion.createStatement();

            String query = "SELECT id_client, login, password, nom, prenom, adresse, telephone FROM client  WHERE login='" + login + "';";
            ResultSet resultat = statement.executeQuery(query);

            System.out.println("com.octest.dao.UtilisateurDaoImpl.read()" + " " + "query=  " + query);
            System.out.println("com.octest.dao.UtilisateurDaoImpl.read()" + " " + resultat);

            ////////////////////////////////////////// ATTENTION zone dangereuse !! -------------------
            if (resultat.next()) { // ATTENTION il faut METTRE ce IF :  http://stackoverflow.com/questions/2120255/resultset-exception-before-start-of-result-set
                int id_client = resultat.getInt("id_client");                
                String login2 = resultat.getString("login");
                String password = resultat.getString("password");
                String nom = resultat.getString("nom");
                String prenom = resultat.getString("prenom");
                String adresse = resultat.getString("adresse");
                String telephone = resultat.getString("telephone");
                
                client.setId_client(id_client);                
                client.setLogin(login2);
                client.setPassword(password);
                client.setNom(nom);
                client.setPrenom(prenom);
                client.setAdresse(adresse);
                client.setTelephone(telephone);

            }

            System.out.println("UtilisateurDaoImpl.read=" + client);

        } catch (Exception e) {
            System.out.println("EXCEPTION: " + e.getMessage());
            System.out.println("****************EXCEPTION:   UtilisateurDaoImpl.read()*************************");
            e.printStackTrace();
        }
        return client;
    }

    
    
    
    
    
    
    @Override
    public void update(Client client) {
   
        Connection connexion = null;
        PreparedStatement preparedStatement = null;

        try {
            connexion = daoFactory.getConnection();
            int id_client = client.getId_client(); 
            String login = client.getLogin();
            String password = client.getPassword();
            String nom = client.getNom();
            String prenom = client.getPrenom();
            String adresse = client.getAdresse();
            String telephone = client.getTelephone();
     
            System.out.println("DEBUG: AppDaoImpl.update() : " + client);

            preparedStatement = connexion.prepareStatement("UPDATE client SET login= ?, password= ?, nom= ?, prenom= ?, adresse= ?, telephone= ? WHERE id_client='"+id_client+"';");
            
            System.out.println("DEBUG2:preparedStatement : " + preparedStatement);

            preparedStatement.setString(1, login);
            preparedStatement.setString(2, password);
            preparedStatement.setString(3, nom);
            preparedStatement.setString(4, prenom);
            preparedStatement.setString(5, adresse);
            preparedStatement.setString(6, telephone);        

            preparedStatement.executeUpdate();

            connexion.close();
 
        } catch (SQLException e) {
            System.out.println("com.octest.dao.UtilisateurDaoImpl.update()" + "EXCEPTION SQLException ---------------------");
            e.printStackTrace();
        }
    }



    @Override
    public boolean login(String login, String password) {

        Connection connexion = null;
        Statement statement = null;
        ResultSet resultat = null;

        System.out.println("com.octest.dao.UtilisateurDaoImpl.login() LOGIN=" + login + "  PASSWORD=" + password);

        try {
            connexion = daoFactory.getConnection();
            statement = connexion.createStatement();
            resultat = statement.executeQuery("SELECT  login, password FROM client;");

            while (resultat.next()) {

                String login1 = resultat.getString("login");
                String password1 = resultat.getString("password");

                //EXCEPTION :  java.lang.NullPointerException
                if ((login != null && password != null)) {
                    if ((login.equals(login1)) && (password.equals(password1))) {
                        return true;
                    }
                }
            }
            connexion.close();
            
        } catch (SQLException e) {
            System.out.println("com.octest.dao.UtilisateurDaoImpl.login()=" + " EXCEPTION SQLException +++++++++++");
            System.out.println(e.getMessage());
        }
        return false;
    }

    public void validerInscriptionParMail(String mail) {
        Connection connexion = null;
        Statement statement = null;
        ResultSet resultat = null;

        try {
            connexion = daoFactory.getConnection();
            statement = connexion.createStatement();
            resultat = statement.executeQuery("SELECT login, password, nom, prenom, adresse, telephone FROM client_tmp WHERE login='" + mail + "';");

            if (resultat.next()) {
                String login = resultat.getString("login");
                String password = resultat.getString("password");
                String nom = resultat.getString("nom");
                String prenom = resultat.getString("prenom");
                String adresse = resultat.getString("adresse");
                String telephone = resultat.getString("telephone");
               // String date_validate = resultat.getString("date_validate");
                
                Client client = new Client();

                client.setLogin(login);
                client.setPassword(password);
                client.setNom(nom);
                client.setPrenom(prenom);
                client.setAdresse(adresse);
                client.setTelephone(telephone);
              //  client.setDate_validate(date_validate);
                
                System.out.println("utilisateur =" + client);

                PreparedStatement preparedStatement = null;

                preparedStatement = connexion.prepareStatement("INSERT INTO client(login, password, nom, prenom, adresse, telephone, date_validate ) VALUES(?, ?, ?, ?, ?, ?, ?);");
                preparedStatement.setString(1, client.getLogin());
                preparedStatement.setString(2, client.getPassword());
                preparedStatement.setString(3, client.getNom());
                preparedStatement.setString(4, client.getPrenom());
                preparedStatement.setString(5, client.getAdresse());
                preparedStatement.setString(6, client.getTelephone());                
//                preparedStatement.execute();
 
            //DATE : http://jmdoudoux.developpez.com/cours/developpons/java/chap-utilisation_dates.php
 
            
                /*
                Pour les opérations sur les dates, Calendar dispose des constantes suivantes:
                Calendar.DATE: ajouter/soustraire un jour
                Calendar.MONTH: ajouter/soustraire un mois
                Calendar.YEAR: ajouter/soustraire une année
                En 2ème paramètre de la fonction Add de Calendar, un nombre positif ajouter une durée, un nombre négatif soustrait une durée.

                 */
 
                DateFormat shortDateFormat = DateFormat.getDateTimeInstance(DateFormat.SHORT, DateFormat.SHORT);
                System.out.println("DEBUG: create: DateFormat=" + shortDateFormat);
                Calendar calendar = Calendar.getInstance();
                SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy HH:mm");
                System.out.println("DEBUG: create: " + sdf);
                calendar.add(Calendar.MONTH, 1);
                System.out.println("DEBUG: create: " + sdf.format(calendar.getTime()));
                preparedStatement.setString(7, sdf.format(calendar.getTime()));
                preparedStatement.executeUpdate();
 
                // DELETE FROM `test_mvc_crud`.`utilisateur_tmp` WHERE `utilisateur_tmp`.`login` = \'toto@free.fr\'» 
                String query = "DELETE FROM client_tmp WHERE login = ?";

                PreparedStatement preparedStmt = connexion.prepareStatement(query);
                preparedStmt.setString(1, mail);
                preparedStmt.execute();
                connexion.close();

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public String pwdPerdu(String mail) {
        Connection connexion = null;
        Statement statement = null;
        ResultSet resultat = null;
        String password = null;
        try {
            connexion = daoFactory.getConnection();
            statement = connexion.createStatement();
            resultat = statement.executeQuery("SELECT  password FROM client WHERE  login='" + mail + "';");

            if (resultat.next()) {

                password = resultat.getString("password");
            }

            connexion.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return password;
    }

    public boolean verifExistLoginTemp( String mail) {

        Connection connexion = null;
        Statement statement = null;
        ResultSet resultat = null;
 
        try {
            connexion = daoFactory.getConnection();
            statement = connexion.createStatement();
            resultat = statement.executeQuery("SELECT  login FROM client_tmp ;");

            while (resultat.next()) {

                String login1 = resultat.getString("login");
        
                if ((mail != null && login1 != null)) {
                    if ((mail.equals(login1))) {
                        return true;
                    }
                }
            }

            connexion.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
       return false;
    }

        public boolean verifExistLogin( String mail) {

        Connection connexion = null;
        Statement statement = null;
        ResultSet resultat = null;
 
        try {
            connexion = daoFactory.getConnection();
            statement = connexion.createStatement();
            resultat = statement.executeQuery("SELECT  login FROM client ;");

            while (resultat.next()) {

                String login1 = resultat.getString("login");
        
                if ((mail != null && login1 != null)) {
                    if ((mail.equals(login1))) {
                        return true;
                    }
                }
            }

            connexion.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
       return false;
    }

    @Override
    public int getIdClient(String login, String pwd) {
        Connection connexion = null;
        Statement statement = null;
        ResultSet resultat = null;
        int id_client = 0;
        
        try {
            connexion = daoFactory.getConnection();
            statement = connexion.createStatement();
            resultat = statement.executeQuery("SELECT id_client FROM client WHERE login=\""+login+"\" AND password=\""+pwd+"\";");

            while (resultat.next()) {

                id_client = resultat.getInt("id_client");

            }

            connexion.close();

        } catch (SQLException e) {

            System.out.println(e.getMessage());
        }

        return id_client;
    }

    
    
    
    
    
    
    
    
    
    @Override
    public List<Commande> listerCommande(int id_client) {
        List<Commande> commandes = new ArrayList<Commande>();
        Connection connexion = null;
        Statement statement = null;
        ResultSet resultat = null;

        try {
            connexion = daoFactory.getConnection();
            statement = connexion.createStatement();
            resultat = statement.executeQuery("SELECT id_commande, total, date_commande, etat_cmd FROM commande WHERE id_client='"+id_client+"';");            
            while (resultat.next()) {
                
                int id_commande = resultat.getInt("id_commande");
                String total = resultat.getString("total");
                String date_commande = resultat.getString("date_commande");
                String etat_cmd = resultat.getString("etat_cmd"); 
                
                Commande commande = new Commande();

                commande.setId_commande(id_commande);
                commande.setTotal(total);
                commande.setDate_commande(date_commande);
                commande.setId_client(id_client);
                commande.setEtat_cmd(etat_cmd);   
                
                commandes.add(commande);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return commandes;
     }

    /**
     * cette commande retourne list des lignes commande pour la commande courante (encours) apartenant au client (id_client)
     * @param id_client
     * @param id_commande
     * @return 
     */
    @Override
    public List<LigneCommande> listerLigneCommande(int id_commande) {
        List<LigneCommande> ligneCommandes = new ArrayList<LigneCommande>();
        Connection connexion = null;
        Statement statement = null;
        ResultSet resultat = null;
        ResultSet resultat2 = null;
        
        try {
            connexion = daoFactory.getConnection();
            statement = connexion.createStatement();
            resultat = statement.executeQuery("SELECT id_lignecommande, id_produit, promotion, quantite, prix_soustotal, id_commande FROM lignecommande WHERE id_commande='" + id_commande + "';");
            while (resultat.next()) {

                int id_lignecommande = resultat.getInt("id_lignecommande");
                int id_produit = resultat.getInt("id_produit");
                String promotion = resultat.getString("promotion");
                String quantite = resultat.getString("quantite");
                String prix_soustotal = resultat.getString("prix_soustotal");
                id_commande = resultat.getInt("id_commande");

                LigneCommande ligneCommande = new LigneCommande();

                ligneCommande.setId_lignecommande(id_lignecommande);
                ligneCommande.setId_produit(id_produit);
                ligneCommande.setPromotion(promotion);
                ligneCommande.setQuantite(quantite);
                ligneCommande.setPrix_soustotal(prix_soustotal);
                ligneCommande.setId_commande(id_commande);
                
                Connection connexion2 = daoFactory.getConnection();
                statement = connexion2.createStatement();
                resultat2 = statement.executeQuery("SELECT photo FROM produit WHERE id_produit='" + id_produit + "';");
                while (resultat2.next()) {
                       String photo = resultat2.getString("photo");
                        ligneCommande.setPhoto(photo);
                }
                connexion2.close();
               

                ligneCommandes.add(ligneCommande);
    
            }  
            connexion.close();
            
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return ligneCommandes;
    }

    

    @Override
    public void deleteLigneCommande(int id_lignecommande) {
        Connection connexion = null;
        
        System.out.println("DEBUG : DELETE FROM lignecommande WHERE id_lignecommande = '"+id_lignecommande+"';");
        try {
                connexion = daoFactory.getConnection();
                String query = "DELETE FROM lignecommande WHERE id_lignecommande = '"+id_lignecommande+"';";
                
                PreparedStatement preparedStmt = connexion.prepareStatement(query);
                
                preparedStmt.execute();
                
        }catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void updateStatusCommande(int id_commande, String etat) {

        Connection connexion = null;
        PreparedStatement preparedStatement = null;
        
           try {
              connexion = daoFactory.getConnection();
          
              preparedStatement = connexion.prepareStatement("UPDATE commande SET  etat_cmd= ? WHERE id_commande='"+id_commande+"';");
          
              preparedStatement.setString(1,etat);
            
              preparedStatement.executeUpdate();

              connexion.close();
                              
           } catch (SQLException e) {
            e.printStackTrace();
        }
    }
   
   @Override  
   public void  insererLigneCommande(int id_lignecommande,int id_produit, String promotion, String quantite, String prix_soustotal, int id_commande ){
       Connection connexion = null;      
       PreparedStatement preparedStatement = null;
       
       System.out.println("DEBUG insererLigneCommande(() : id_produit = "+id_produit);
       System.out.println("DEBUG insererLigneCommande(() : id_lignecommande = "+id_lignecommande);
       
       try {
           connexion = daoFactory.getConnection();           

           LigneCommande lignecommande = new LigneCommande();

           lignecommande.setId_produit(id_produit);
           lignecommande.setPromotion(promotion);
           lignecommande.setQuantite(quantite);
           lignecommande.setPrix_soustotal(prix_soustotal);
           lignecommande.setId_commande(id_commande);
          
           preparedStatement = connexion.prepareStatement("INSERT INTO lignecommande(id_produit, promotion, quantite, prix_soustotal, id_commande) VALUES(?, ?, ?, ?, ?);");

           System.out.println("INSERT INTO lignecommande(...) : "+lignecommande.toString());
           
           preparedStatement.setInt(1, lignecommande.getId_produit());
           preparedStatement.setString(2, lignecommande.getPromotion());
           preparedStatement.setString(3, lignecommande.getQuantite());
           preparedStatement.setString(4, lignecommande.getPrix_soustotal());
           preparedStatement.setInt(5, lignecommande.getId_commande());

           preparedStatement.execute();
           connexion.close();

       } catch (SQLException e) {
           e.printStackTrace();
       }
   }
   
   @Override
   public Commande createCommande( String total, String date_commande, int id_client, String etat_cmd ){
      
       Connection connexion = null;      
       PreparedStatement preparedStatement = null;
       Commande commande = new Commande();
       
       try {
           
           connexion = daoFactory.getConnection();           

           preparedStatement = connexion.prepareStatement("INSERT INTO commande(total, date_commande, id_client, etat_cmd) VALUES(?, ?, ?, ?);");

           preparedStatement.setString(1, total);
           preparedStatement.setString(2, date_commande);
           preparedStatement.setInt(3, id_client);
           preparedStatement.setString(4, etat_cmd);

           preparedStatement.execute();
           
           // SELECT id_commande FROM commande WHERE date_commande=date_commande AND id_client=id_client ;
           Statement statement = connexion.createStatement();
           ResultSet resultat = statement.executeQuery("SELECT id_commande, total, date_commande, id_client, etat_cmd FROM commande WHERE date_commande='"+date_commande+"' AND id_client='"+id_client+"' ;");
           int id_commande = 0;
           int id_client2 =  0;
           while (resultat.next()) {

               id_commande = resultat.getInt("id_commande");
               total = resultat.getString("total");
               date_commande = resultat.getString("date_commande");
               id_client2 = resultat.getInt("id_client");
               etat_cmd = resultat.getString("etat_cmd");
              
           }
           
           commande.setId_commande(id_commande);
           commande.setTotal(total);
           commande.setDate_commande(date_commande);
           commande.setId_client(id_client2);
           commande.setEtat_cmd(etat_cmd);
           
           connexion.close();

       } catch (SQLException e) {
           e.printStackTrace();
       }       
       return commande;
   }
  
 
  

    @Override
    public Commande verifExistCommandeEnCours(int id_client) {
        Connection connexion = null;
        Statement statement = null;
        ResultSet resultat = null;
        Commande commande = null;
        
        try {
            connexion = daoFactory.getConnection();
            statement = connexion.createStatement();
            resultat = statement.executeQuery("SELECT id_commande, total, date_commande, id_client, etat_cmd FROM commande WHERE id_client='"+id_client+"' AND etat_cmd='ENCOURS' ;");

            while (resultat.next()) {

                int id_commande = resultat.getInt("id_commande");
                String total = resultat.getString("total");
                String date_commande = resultat.getString("date_commande");
                int id_client2 = resultat.getInt("id_client");
                String etat_cmd = resultat.getString("etat_cmd");
             
                commande = new Commande();
                
                commande.setId_commande(id_commande);
                commande.setTotal(total);
                commande.setDate_commande(date_commande);
                commande.setId_client(id_client2);
                commande.setEtat_cmd(etat_cmd);
                
            }
            
            connexion.close();
       
        } catch (SQLException e) {
            e.printStackTrace();
        }
       return commande;
        
    }

    @Override
    public LigneCommande verifExistLigneCommande(int id_commande, int id_produit) {
        Connection connexion = null;
        Statement statement = null;
        ResultSet resultat = null;
        LigneCommande lignecommande = null;

        try {
            connexion = daoFactory.getConnection();
            statement = connexion.createStatement();
            resultat = statement.executeQuery("SELECT id_lignecommande, id_produit, promotion, quantite, prix_soustotal, id_commande  FROM ligneCommande WHERE id_commande='" + id_commande + "' AND id_produit='"+id_produit+"' ;");

            while (resultat.next()) {

                int id_lignecommande = resultat.getInt("id_lignecommande");
                id_produit = resultat.getInt("id_produit");
                String promotion = resultat.getString("promotion");
                String quantite = resultat.getString("quantite");
                String prix_soustotal = resultat.getString("prix_soustotal");
                id_commande = resultat.getInt("id_commande");

                lignecommande = new LigneCommande();

                lignecommande.setId_lignecommande(id_lignecommande);
                lignecommande.setId_produit(id_produit);
                lignecommande.setPromotion(promotion);
                lignecommande.setQuantite(quantite);
                lignecommande.setPrix_soustotal(prix_soustotal);
                lignecommande.setId_commande(id_commande);

            }

            connexion.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return lignecommande;
 
    }

    
    
    
    
    
    
    
    
    
    
    
    @Override
    public Produit getProduit(int id_produit) {

        Connection connexion = null;
        Statement statement = null;
        ResultSet resultat = null;
        Produit produit = null;

        try {
            connexion = daoFactory.getConnection();
            statement = connexion.createStatement();
            resultat = statement.executeQuery("SELECT id_produit, nom, description, discount, photo,  prix_unitaire, id_producteur, tva  FROM produit WHERE id_produit='"+id_produit+"' ;");

            while (resultat.next()) {

                id_produit = resultat.getInt("id_produit");
                String nom = resultat.getString("nom");
                String description = resultat.getString("description");
                String discount = resultat.getString("discount");
                String photo = resultat.getString("photo");
                String prix_unitaire = resultat.getString("prix_unitaire");
                int id_producteur = resultat.getInt("id_producteur");   
                String tva = resultat.getString("TVA");

                produit = new Produit();

                produit.setId_produit(id_produit);
                produit.setNom(nom);
                produit.setDescription(description);
                produit.setDiscount(discount);
                produit.setPhoto(photo);
                produit.setPrix_unitaire(prix_unitaire);
                produit.setId_producteur(id_producteur); 
                produit.setTVAproduit(tva);

            }

            connexion.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return produit;        
   
    }

    @Override
    public List<Commande> listerCommandeStatusPL(int id_client) {
        List<Commande> commandes = new ArrayList<Commande>();
        Connection connexion = null;
        Statement statement = null;
        ResultSet resultat = null;

        try {
            connexion = daoFactory.getConnection();
            statement = connexion.createStatement();
            resultat = statement.executeQuery("SELECT id_commande, total, date_commande, etat_cmd FROM commande WHERE id_client='"+id_client+"' AND etat_cmd!='ENCOURS' ;");            
            while (resultat.next()) {
                
                int id_commande = resultat.getInt("id_commande");
                String total = resultat.getString("total");
                String date_commande = resultat.getString("date_commande");
                String etat_cmd = resultat.getString("etat_cmd"); 
                
                Commande commande = new Commande();

                commande.setId_commande(id_commande);
                commande.setTotal(total);
                commande.setDate_commande(date_commande);
                commande.setId_client(id_client);
                commande.setEtat_cmd(etat_cmd);   
                
                commandes.add(commande);
                System.out.println("DEBUG : com.test.lifecycle.AppDaoImpl.listerCommandeStatusPL(id_commande)"+id_commande);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return commandes;
    }

    @Override
    public List<Produit> listerProduitParLigneCommande(List<LigneCommande> listLigneCommande) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
    @Override
    public Client getClient(int id_client) {
        
         Connection connexion = null;
        Statement statement = null;
        ResultSet resultat = null;
        Client client = null;
   
         try {
            connexion = daoFactory.getConnection();
            statement = connexion.createStatement();
            resultat = statement.executeQuery("SELECT id_client, login, password, nom, prenom, adresse, telephone, date_validate  FROM client WHERE id_client='"+id_client+"' ;");

            while (resultat.next()) {
                
                id_client = resultat.getInt("id_client");
                String login = resultat.getString("login");
                String password = resultat.getString("password");
                String nom = resultat.getString("nom");
                String prenom = resultat.getString("prenom");
                String adresse = resultat.getString("adresse");
                String telephone = resultat.getString("telephone");
                String date_validate = resultat.getString("date_validate");
                
                client = new Client();
                
                client.setId_client(id_client);
                client.setLogin(login);
                client.setPassword(password);
                client.setNom(nom);
                client.setPrenom(prenom);
                client.setAdresse(adresse);
                client.setTelephone(telephone);
                client.setDate_validate(date_validate);
            }
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
       return client; 
    }
    
    
//    public static void main(String[] args) {    
//  
//        AppDAO dao = AppDaoImpl.getInstanceSingleton(DaoFactory.getInstance());
//


//AppDAO dao = getInstanceSingleton(DaoFactory.getInstance());
//insererCommande(  String total, String date_commande, String id_client, String etat_cmd )
// dao.insererCommande( "100", "17/09/2016", "1", "ENCOURS");


//insererLigneCommande(String id_lignecommande,String id_produit, String promotion, String quantite, String prix_soustotal, String id_commande )             
//dao.insererLigneCommande("1", "1", "5", "8", "10", "1");


//updateStatusCommande(int id_commande, String etat)
//dao.updateStatusCommande(1, "PAYE");


//deleteLigneCommande(int id_lignecommande, int id_produit)
//dao.deleteLigneCommande(1, 1);

//updateQuantiteLigneCommande(int id_lignecommande, int id_produit, int quantite )
//dao.updateQuantiteLigneCommande(1, 1, 20);


//List<LigneCommande> listerLigneCommande(int id_commande)
//dao.listerLigneCommande(1);

 
//List<Produit> listerParCategoriee(int id_producteur)
//dao.listerProduits(2);
 //dao.listerProducteur();
//List<Produit> listerParCategoriee(int id_producteur)
  //dao.listerParCategorie(1);
//  }
    
    private void updateTotalCommande(int id_commande, String total) {

        Connection connexion = null;
        PreparedStatement preparedStatement = null;
        
           try {
              connexion = daoFactory.getConnection();
          
              preparedStatement = connexion.prepareStatement("UPDATE commande SET  total= ? WHERE id_commande='"+id_commande+"';");
              
              BigDecimal bd = new BigDecimal(total);
              
              BigDecimal bd2 = bd.setScale(2, RoundingMode.HALF_EVEN);
              
              total = bd2.toString();
         
              preparedStatement.setString(1,total);
            
              preparedStatement.executeUpdate();

              connexion.close();
                              
           } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
   
    private BigDecimal getTotalCommande(int id_commande)  {
        Connection connexion = null;
        Statement statement = null;
        ResultSet resultat = null;
        
        BigDecimal prix_total_bd = new BigDecimal(0);
                
        try {
            connexion = daoFactory.getConnection();
            statement = connexion.createStatement();
            resultat = statement.executeQuery("SELECT prix_soustotal FROM lignecommande WHERE id_commande='"+id_commande+"';");

            while (resultat.next()) {

                String prix_soustotal = resultat.getString("prix_soustotal");
                
                prix_total_bd = prix_total_bd.add(new BigDecimal(prix_soustotal));
            }
            
            connexion.close();
       
        } catch (SQLException e) {
            e.printStackTrace();
        }
            
        return prix_total_bd;
        
    }
   
   
    
    private boolean updateQuantiteSousTotalLigneCommande(int id_lignecommande, int id_produit, int quantite, String prix_soustotal) {
        Connection connexion = null;
        PreparedStatement preparedStatement = null;
        
           try {
              connexion = daoFactory.getConnection();
          
              preparedStatement = connexion.prepareStatement("UPDATE lignecommande SET  quantite= ?, prix_soustotal=? WHERE id_lignecommande = '"+id_lignecommande+"' AND id_produit = '"+id_produit+"';");
          
              preparedStatement.setString(1,Integer.toString(quantite));
              
              BigDecimal bd = new BigDecimal(prix_soustotal);
              
              BigDecimal bd2 = bd.setScale(2, RoundingMode.HALF_EVEN);
              
              preparedStatement.setString(2,bd2.toString());
            
              preparedStatement.executeUpdate();

              connexion.close();
                              
           } catch (SQLException e) {
            e.printStackTrace();
        }
        return true;
    }
    
    
    
    @Override
    public JSONObject calculTotauxCommande(int id_lignecommande, int quantite, String id_client) {
       
        Connection connexion = null;
        Statement statement = null;
        ResultSet resultat = null;
        JSONObject json = null;
        
        try {
            connexion = daoFactory.getConnection();
            statement = connexion.createStatement();
            resultat = statement.executeQuery("SELECT id_produit, promotion,  id_commande  FROM lignecommande WHERE id_lignecommande='" + id_lignecommande + "';");

            json = new JSONObject();
            
            BigDecimal quantiteBd = new BigDecimal(quantite);
            
            BigDecimal centbd = BigDecimal.valueOf(100);
            
            while (resultat.next()) {
                
               Produit produit1 = getProduit(resultat.getInt("id_produit"));
               String prix_unitaire =  produit1.getPrix_unitaire();
               String prix_unitairestr = prix_unitaire;
               String[] parts = prix_unitairestr.split("/");
               String prix_unitaire1 = parts[0];
               String part2 = parts[1];
               
        
               BigDecimal prix_unitaire_bd = new  BigDecimal(prix_unitaire1);              
               BigDecimal  prix_TTC = prix_unitaire_bd.multiply(quantiteBd);
                 
               BigDecimal  tva = new  BigDecimal(produit1.getTVAproduit());                    
               BigDecimal  cout_tva = prix_TTC.multiply(tva.divide(centbd));
              
              
               BigDecimal displayVal = prix_TTC.setScale(2, RoundingMode.HALF_EVEN);                   
               String moneyString = displayVal.toString();
             
              updateQuantiteSousTotalLigneCommande(id_lignecommande, resultat.getInt("id_produit"), quantite, moneyString);        
              updateTotalCommande(resultat.getInt("id_commande"), getTotalCommande(resultat.getInt("id_commande")).toString());
                        
              NumberFormat frdCostFormat = NumberFormat.getCurrencyInstance(Locale.FRANCE);
              String moneyString2 = frdCostFormat.format(displayVal.doubleValue());
              
              BigDecimal totalCmd = getTotalCommande(resultat.getInt("id_commande"));
              BigDecimal displayVal5 = totalCmd.setScale(2, RoundingMode.HALF_EVEN);
              NumberFormat frdCostFormat2 = NumberFormat.getCurrencyInstance(Locale.FRANCE);
              String moneyString5 = frdCostFormat2.format(displayVal5.doubleValue());
              
              
              json.put("id_soustotal", moneyString2);
              
              
              json.put("id_tva_vingt1", calculTotalTVAproduit(resultat.getInt("id_commande") , "20") );
              json.put("id_tva_vingt2", clculerPrixTotalTVA(resultat.getInt("id_commande"), "20"));
              
              json.put("id_tva_dix1", calculTotalTVAproduit(resultat.getInt("id_commande") , "10") );
              json.put("id_tva_dix2", clculerPrixTotalTVA(resultat.getInt("id_commande"), "10"));
              
              json.put("id_tva_cinq1", calculTotalTVAproduit(resultat.getInt("id_commande") , "5.5") );
              json.put("id_tva_cinq2", clculerPrixTotalTVA(resultat.getInt("id_commande"), "5.5"));
              
              json.put("id_tva_deux1", calculTotalTVAproduit(resultat.getInt("id_commande") , "2.1") );
              json.put("id_tva_deux2", clculerPrixTotalTVA(resultat.getInt("id_commande"), "2.1"));
              
              json.put("id_tva_total", clculerTotalTousTVA(resultat.getInt("id_commande")));
              
              json.put("id_total", moneyString5);
              
             
              json.put( "id_nbrproduitsdanspanier",  calculTotalNbrDeProduitsPanier(id_client).get("id_nbrproduitsdanspanier"));
              json.put( "id_total_fin",  calculTotalNbrDeProduitsPanier(id_client).get("id_total_fin"));
              json.put( "id_countlignecmd",  calculTotalNbrDeProduitsPanier(id_client).get("id_countlignecmd"));
              
            }
            
            connexion.close();

        } 
        catch (SQLException e) {
            e.printStackTrace();
        } 
        catch (Exception e) {
            e.printStackTrace();
        } 
        return json;
    }
    
    @Override
    public void recalculerTotalCmd(int id_commande, BigDecimal sous_total)
    {
        BigDecimal total = getTotalCommande(id_commande);        
        total = total.add(sous_total);
        
        BigDecimal totalRounding = total.setScale(2, RoundingMode.HALF_EVEN);        
        String totalStr = totalRounding.toString();
        
        updateTotalCommande(id_commande, totalStr);
    }
    
    @Override
    public List<Famille> listeFamille() {
        
         List<Famille> familles = new ArrayList<Famille>();
        Connection connexion = null;
        Statement statement = null;
        ResultSet resultat = null;
        
        try {
         connexion = daoFactory.getConnection();
            statement = connexion.createStatement();
            resultat = statement.executeQuery("SELECT id_famille, nom, img FROM famille;");

            while (resultat.next()) {

                int id_famille = resultat.getInt("id_famille");
                String nom = resultat.getString("nom");
                String img = resultat.getString("img");
                
                Famille famille = new Famille(); 
                
                famille.setId_famille(id_famille);
                famille.setNom(nom);
                famille.setImg(img);
                
                familles.add(famille);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return familles;
    }

    @Override
    public String calculTotalTVAproduit(int id_cmd, String tva) {
        
        List<LigneCommande> listLigneCmd = listerLigneCommande(id_cmd);
        
        BigDecimal total_tva_produit = new BigDecimal(0);
        
        BigDecimal cent = new BigDecimal(100);
        
        for (LigneCommande ligneCommande : listLigneCmd)
        {
            int id_produit = ligneCommande.getId_produit();
            String quantite = ligneCommande.getQuantite();
            Produit produit = getProduit(id_produit);
            
            String tva2 = produit.getTVAproduit();
            
            if(tva.equals(tva2))  { 
                
               String prixUnitaire = produit.getPrix_unitaire();
               String[] parts = prixUnitaire.split("/");
               String prix_unitaire1 = parts[0];
               String part2 = parts[1];
               BigDecimal prix_unitaire_bd1 = new BigDecimal(prix_unitaire1);
               BigDecimal quantite2 = new BigDecimal(quantite);
               BigDecimal sous_total = prix_unitaire_bd1.multiply(quantite2);
               
               BigDecimal tva_bd = new BigDecimal(tva);
               
               BigDecimal tva_prix = tva_bd.divide(cent);
               
               total_tva_produit = total_tva_produit.add(sous_total.multiply(tva_prix));
            }
        }
        
        BigDecimal displayVal = total_tva_produit.setScale(2, RoundingMode.HALF_EVEN);
        NumberFormat frdCostFormat = NumberFormat.getCurrencyInstance(Locale.FRANCE);
        String moneyString = frdCostFormat.format(displayVal.doubleValue());
        
      return moneyString;
    }
    
    

    @Override
    public String clculerPrixTotalTVA(int id_cmd, String tva) {
        
       List<LigneCommande> listLigneCmd = listerLigneCommande(id_cmd);
        
        BigDecimal prixTotalTva = new BigDecimal(0);
        
        BigDecimal cent = new BigDecimal(100);
        
        for (LigneCommande ligneCommande : listLigneCmd)
        {
            int id_produit = ligneCommande.getId_produit();
            String quantite = ligneCommande.getQuantite();
            Produit produit = getProduit(id_produit);
            
            String tva2 = produit.getTVAproduit();
            
            if(tva.equals(tva2))  { 
                
               String prixUnitaire = produit.getPrix_unitaire();
               String[] parts = prixUnitaire.split("/");
               String prix_unitaire1 = parts[0];
               String part2 = parts[1];
               BigDecimal prix_unitaire_bd1 = new BigDecimal(prix_unitaire1);
               BigDecimal quantite2 = new BigDecimal(quantite);
               BigDecimal sous_total = prix_unitaire_bd1.multiply(quantite2);
               
               BigDecimal tva_bd = new BigDecimal(tva);
              
               BigDecimal tva_prix = tva_bd.divide(cent);
               
               //BigDecimal tva_produit = sous_total.multiply(tva_prix);
               
               
               prixTotalTva = prixTotalTva.add(sous_total);
            }
        }
        
        BigDecimal displayVal = prixTotalTva.setScale(2, RoundingMode.HALF_EVEN);
        NumberFormat frdCostFormat = NumberFormat.getCurrencyInstance(Locale.FRANCE);
        String moneyString = frdCostFormat.format(displayVal.doubleValue());
        
      return moneyString;
    }
    
    

    @Override
    public String clculerTotalTousTVA(int id_cmd) {
        
        List<LigneCommande> listLigneCmd = listerLigneCommande(id_cmd);
        
        BigDecimal prixTotalTousTva = new BigDecimal(0);
        
        BigDecimal cent = new BigDecimal(100);
        
        for (LigneCommande ligneCommande : listLigneCmd)
        {
            int id_produit = ligneCommande.getId_produit();
            String quantite = ligneCommande.getQuantite();
            Produit produit = getProduit(id_produit);
            
            String tva2 = produit.getTVAproduit();
            
            BigDecimal tva_bd = new BigDecimal(tva2);
                
            String prixUnitaire = produit.getPrix_unitaire();
            String[] parts = prixUnitaire.split("/");
            String prix_unitaire1 = parts[0];
            String part2 = parts[1];
            BigDecimal prix_unitaire_bd1 = new BigDecimal(prix_unitaire1);
            BigDecimal quantite2 = new BigDecimal(quantite);
            BigDecimal prix_HT = prix_unitaire_bd1.multiply(quantite2);
            
            BigDecimal tva_prix = tva_bd.divide(cent);
               
            BigDecimal cout_TVA = prix_HT.multiply(tva_prix);
               
            prixTotalTousTva = prixTotalTousTva.add(cout_TVA);
            
        }
        
        BigDecimal displayVal = prixTotalTousTva.setScale(2, RoundingMode.HALF_EVEN);
        NumberFormat frdCostFormat = NumberFormat.getCurrencyInstance(Locale.FRANCE);
        String moneyString = frdCostFormat.format(displayVal.doubleValue());
       
      
       return moneyString;
    }
    
    
     @Override
    public String calculerCommandTotal(int id_cmd) {
        
        List<LigneCommande> listLigneCmd = listerLigneCommande(id_cmd);
        
        BigDecimal prixTotalTousTva = new BigDecimal(0);
        
        BigDecimal cent = new BigDecimal(100);
        
        for (LigneCommande ligneCommande : listLigneCmd)
        {
            int id_produit = ligneCommande.getId_produit();
            String quantite = ligneCommande.getQuantite();
            Produit produit = getProduit(id_produit);
            
            String tva2 = produit.getTVAproduit();
            
            BigDecimal tva_bd = new BigDecimal(tva2);
                
            String prixUnitaire = produit.getPrix_unitaire();
            String[] parts = prixUnitaire.split("/");
            String prix_unitaire1 = parts[0];
            String part2 = parts[1];
            BigDecimal prix_unitaire_bd1 = new BigDecimal(prix_unitaire1);
            BigDecimal quantite2 = new BigDecimal(quantite);
            BigDecimal prix_TTC = prix_unitaire_bd1.multiply(quantite2);
            
            prixTotalTousTva = prixTotalTousTva.add(prix_TTC);
            
        }
        
        BigDecimal displayVal = prixTotalTousTva.setScale(2, RoundingMode.HALF_EVEN);
        NumberFormat frdCostFormat = NumberFormat.getCurrencyInstance(Locale.FRANCE);
        String moneyString = frdCostFormat.format(displayVal.doubleValue());
        
        String totalStr = displayVal.toString();
       
        updateTotalCommande(id_cmd, totalStr);
      
       return moneyString;
    }

    @Override
    public String getNbrLigneCmd(String id_client1) {
        
        
         int id_client2 = Integer.parseInt(id_client1);
         
         Commande commandeEncour = verifExistCommandeEnCours(id_client2);
         
         List<LigneCommande> listLigneCmd = new ArrayList<LigneCommande>();
         
         if(commandeEncour != null) {
             int id_commande = commandeEncour.getId_commande();
               listLigneCmd = listerLigneCommande(id_commande);
         }
         
         
         
         if(listLigneCmd!=null) { 
          
             return ""+listLigneCmd.size(); 
         }
         
         return "";
    }
    
    @Override
    public JSONObject getNbrLigneCmd2(String id_client1) {
        
        JSONObject json = new JSONObject();
       
         int id_client2 = Integer.parseInt(id_client1);
         
         Commande commandeEncour = verifExistCommandeEnCours(id_client2);
         
         List<LigneCommande> listLigneCmd = new ArrayList<LigneCommande>();
         
         if(commandeEncour != null) {
             int id_commande = commandeEncour.getId_commande();
               listLigneCmd = listerLigneCommande(id_commande);
         }
         
         
         
         if(listLigneCmd!=null) { 
             json.put("id_countlignecmd", listLigneCmd.size()); 
             return json; 
         }
         json.put("id_countlignecmd", 0);
         return json;
    }
    
    
    
    @Override
    public JSONObject getIDLigneCommandeAJAX(int id_client, int id_produit)  {
        
        JSONObject json = new JSONObject();
        
        int id_lignecommande = 0;
         
         Commande commandeEncour = verifExistCommandeEnCours(id_client);
         
         List<LigneCommande> listLigneCmd = new ArrayList<LigneCommande>();
         
         if(commandeEncour != null) {
             int id_commande = commandeEncour.getId_commande();
               listLigneCmd = listerLigneCommande(id_commande);
         }
         
         if(listLigneCmd!=null) {
             
             for (LigneCommande lignecmd : listLigneCmd  )  {
                 
                 int id_prod = lignecmd.getId_produit();
                 
                 if(id_prod==id_produit) {
                     id_lignecommande = lignecmd.getId_lignecommande();
                 }
             }
             
         }
         
         json.put("id_lignecommande", id_lignecommande);
         
         json.put("id_nbrproduitsdanspanier", calculTotalNbrDeProduitsPanier(Integer.toString(id_client)).get("id_nbrproduitsdanspanier"));
         json.put("id_total_fin", calculTotalNbrDeProduitsPanier(Integer.toString(id_client)).get("id_total_fin"));
         json.put("id_countlignecmd", calculTotalNbrDeProduitsPanier(Integer.toString(id_client)).get("id_countlignecmd")); 
        
        return json;
    }
    
    
    /**
     * perlmet de calculer le TOTAL de la quantité de produits ainsi que le prix total 
     * 
     * 
     * @param id_client
     * @return 
     */
    @Override
    public JSONObject calculTotalNbrDeProduitsPanier(String id_client)
    {
        JSONObject json = new JSONObject();
        
         int id_client2 = Integer.parseInt(id_client);
        
        int nbrproduitsdanspanier = 0;
         
         Commande commandeEncour = verifExistCommandeEnCours(id_client2);
         
         List<LigneCommande> listLigneCmd = new ArrayList();
         
         if(commandeEncour != null) {
             int id_commande = commandeEncour.getId_commande();
               listLigneCmd = listerLigneCommande(id_commande);
         }
         
         if(listLigneCmd!=null) {
             
             for (LigneCommande lignecmd : listLigneCmd  )  {
                 
                 nbrproduitsdanspanier = nbrproduitsdanspanier  + Integer.parseInt(lignecmd.getQuantite());
             }
             
         }
         
         String totalStr = calculerCommandTotal(verifExistCommandeEnCours(Integer.parseInt(id_client)).getId_commande());
         
         System.out.println(" ***************  nbrproduitsdanspanier ------->"+nbrproduitsdanspanier+"     totalStr----> "+totalStr+"  ******************");
         
         json.put("id_nbrproduitsdanspanier", nbrproduitsdanspanier);
         json.put("id_total_fin", totalStr);
         json.put("id_countlignecmd", getNbrLigneCmd2(id_client).get("id_countlignecmd")); 
        
        return json;
    }
    
    //   TODO:1
    
    @Override
    public JSONObject actionUserDeleteLigneCommande(String id_client) {
        JSONObject json = new JSONObject();
        
         json.put("id_nbrproduitsdanspanier", calculTotalNbrDeProduitsPanier(id_client).get("id_nbrproduitsdanspanier"));
         json.put("id_total_fin", calculTotalNbrDeProduitsPanier(id_client).get("id_total_fin"));
         json.put("id_countlignecmd", calculTotalNbrDeProduitsPanier(id_client).get("id_countlignecmd")); 
         
        return json;
    }
    
    
    
    @Override
    public int calculTotalNbrDeProduitsPanier222(int id_client)
    {
        
        int nbrproduitsdanspanier = 0;
         
         Commande commandeEncour = verifExistCommandeEnCours(id_client);
         
         List<LigneCommande> listLigneCmd = new ArrayList();
         
         if(commandeEncour != null) {
             int id_commande = commandeEncour.getId_commande();
               listLigneCmd = listerLigneCommande(id_commande);
         }
         
         if(listLigneCmd!=null) {
             
             for (LigneCommande lignecmd : listLigneCmd  )  {
                 
                 nbrproduitsdanspanier = nbrproduitsdanspanier  + Integer.parseInt(lignecmd.getQuantite());
             }
             
         }
         
        return nbrproduitsdanspanier;
    }

  }
