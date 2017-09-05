
package com.test.boundary;

/**
 * 
 * 
 * @author adm
 */
public class CmdController {
    
    
    /**
     * Cette commande permet de créer .....
     */
    public static final String CREATE = "create";
    
    
    /**
     * cette commande du controlleur (MVC) permet à l'utilisateur d'envoyer un mail 
     */
    public static final String ENVOYER_MAIL = "envoyer_mail";
    
    /**
     * Cette commande permet de envoyer un mail pour recevoir pwd perdu
     */
    public static final String PWDPERDU  =  "pwdperdu";
    
    
    /***
     * Cette commande permet de valider le Sign Up
     *  utilisé pour la validation de l'inscription par mail
     */
    public static final String VALIDATION_SIGNUP = "mail_create";
    
    /**
     * 
     */
    public static final String calculPanier = "calculPanier";
    
    /**
     * Permet de payer par Internet et envoi un mail de confirmation
     */
    public static final String PAYER = "commander";
    
    /**
     * Permet de ajouter un produit au MyBag
     */
    public static final String MyBagButtonAdd = "MyBagButtonAdd";
    
        /**
     * Permet de ajouter un produit au MyBag
     */
    public static final String AADDBUTTON = "MyBagButtonAddd";
    
    /***
     * permet de mettre a jour le ID Ligne commande lors du clique sur le bouton ADD
     */
    public static final String UPDATE_ID_LIGNECOMMANDE  = "updateIDlignecommandeAJAX";
    
    
}
