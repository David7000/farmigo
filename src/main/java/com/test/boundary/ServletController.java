package com.test.boundary;

import com.test.entity_lifecycle.DaoFactory;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.entity_lifecycle.Client;
import com.test.mail.SendMail;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpSession;
import com.test.entity_lifecycle.AppDAO;
import com.test.entity_lifecycle.AppDaoImpl;
import com.test.entity_lifecycle.Commande;
import com.test.entity_lifecycle.LigneCommande;
import com.test.entity_lifecycle.Produit;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.json.simple.JSONObject;

/**
 * Servlet implementation class ServletController
 * https://openclassrooms.com/courses/creez-votre-application-web-avec-java-ee/outils-et-environnement-de-developpement
 *
 */
@WebServlet("/ServletController")
public class ServletController extends HttpServlet {

    public static final String CHAMP_EMAIL = "email5";
    public static final String CHAMP_PASS = "motdepasse";
    public static final String CHAMP_CONF = "confirmation";
    public static final String CHAMP_NOM = "nom";
    public static final String CHAMP_PRENOM = "prenom";
    public static final String CHAMP_ADRESSE = "adresse";
    public static final String CHAMP_TELEPHONE = "telephone";

    public static final String ATT_ERREURS = "erreurs";
    public static final String ATT_RESULTAT = "resultat";

    private static final long serialVersionUID = 1L;
    private AppDAO appDAO;

    private com.test.control.EnregistrerMBJSP modelEnregistrerJSP = new com.test.control.EnregistrerMBJSP();

    @Override
    public void init() throws ServletException {

        appDAO = AppDaoImpl.getInstanceSingleton(DaoFactory.getInstance());

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("DEBUG :-------------------> doGet=");

        /* Récupération et destruction de la session en cours */
        HttpSession session = request.getSession();
        String cmd = request.getParameter("cmd");
        String commande = request.getParameter("commande");

        if (commande != null && commande.equals("mail_create")) {
            doPost(request, response);
            return;
        }

        if (commande != null && commande.equals("MyBagLink")) {
            doPost(request, response);
            return;
        }

        request.setAttribute("utilisateurs", appDAO.listerClient());
        //   System.out.println(" DEBUG : Test.java : messagemessagemessagexxxxxxxxxxxxxxxxxxxxxxx " + utilisateurDao.lister());

        List<Client> utilisateurs = appDAO.listerClient();

        //  System.out.println("Test SERVLET : ==> Liste des elements dans la table utilisateur");
        for (Client temp : utilisateurs) {
            // System.out.println(temp);
        }

        if (cmd != null && cmd.equals("mail_form.jsp")) {

            doPost(request, response);
            return;

        }

        if (cmd != null && cmd.equals("updateClient.jsp")) {

            doPost(request, response);
            return;

        }
        if (cmd != null && cmd.equals("ListCommandes.jsp")) {

            doPost(request, response);
            return;

        }
        if (cmd != null && cmd.equals("Producteur_Farmigo Food Community.jsp")) {

            doPost(request, response);
            return;

        }
        if (cmd != null && cmd.equals("Market_Farmigo Food Community.jsp")) {

            doPost(request, response);

        } else {

            this.getServletContext().getRequestDispatcher("/JSP/enregistrer.jsp").forward(request, response);
        }

    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("debuggg++++++++++++++++++++++++commande= doPost");

        HttpSession session = request.getSession();
        // Utilisé pour définir la COMMAND dans  switch (...) case :
        System.out.println("debuggg++++++++++++++++++++++++117session= " + session);
        String commande = request.getParameter("commande");
        String login = request.getParameter("login");
        if (login != null) {
            session.setAttribute("login", login);
        }
        
        //  System.out.println("debuggg+++++++++++++++++++++++++++120login= " + login+"-"+session.getAttribute("login").toString());

        switch (commande) {

            case CmdController.CREATE: {
                System.out.println("case CmdController.CREATE:126 = " + commande);
                /* Récupération de la session en cours */
                session.setAttribute("nom", request.getParameter(CHAMP_NOM));
                session.setAttribute("prenom", request.getParameter(CHAMP_PRENOM));

                String resultat;
                Map<String, String> erreurs = new HashMap<String, String>();
                /* Récupération des champs du formulaire. */
                String email2 = request.getParameter(CHAMP_EMAIL);
                String motDePasse = request.getParameter(CHAMP_PASS);
                String confirmation = request.getParameter(CHAMP_CONF);
                String nom = request.getParameter(CHAMP_NOM);
                String prenom = request.getParameter(CHAMP_PRENOM);
                String adresse = request.getParameter(CHAMP_ADRESSE);
                String telephone = request.getParameter(CHAMP_TELEPHONE);

                System.out.println("debuggg+++++++++++++++++++++++++++email2= " + email2);
                System.out.println("debuggg+++++++++++++++++++++++++++motDePasse= " + motDePasse);
                System.out.println("debuggg+++++++++++++++++++++++++++confirmation= " + confirmation);
                System.out.println("debuggg+++++++++++++++++++++++++++nom= " + nom);
                System.out.println("debuggg+++++++++++++++++++++++++++prenom= " + prenom);
                System.out.println("debuggg+++++++++++++++++++++++++++adresse= " + adresse);
                System.out.println("debuggg+++++++++++++++++++++++++++telephone= " + telephone);
                /* Validation du champ email2. */
                try {
                    modelEnregistrerJSP.validationEmail(email2);
                } catch (Exception e) {
                    erreurs.put(CHAMP_EMAIL, e.getMessage());
                }

                /* Validation des champs mot de passe et confirmation. */
                try {
                    modelEnregistrerJSP.validationMotsDePasse(motDePasse, confirmation);
                } catch (Exception e) {
                    erreurs.put(CHAMP_PASS, e.getMessage());
                }

                /* Validation du champ nom. */
                try {
                    modelEnregistrerJSP.validationNom(nom);
                } catch (Exception e) {
                    erreurs.put(CHAMP_NOM, e.getMessage());
                }

                boolean loginExistTemp = appDAO.verifExistLoginTemp(email2);

                if (loginExistTemp == true) {
                    session.setAttribute("loginExistTemp", "true");
                    this.getServletContext().getRequestDispatcher("/signupexist.jsp").forward(request, response);
                    return;
                }

                boolean loginExist = appDAO.verifExistLogin(email2);

                if (loginExist == true) {
                    session.setAttribute("loginExist", "true");
                    this.getServletContext().getRequestDispatcher("/signupexist.jsp").forward(request, response);
                    return;
                }
                System.out.println("ligne login: 210= ");

                /* Initialisation du résultat global de la validation. */
                if (erreurs.isEmpty()) {
                    resultat = "Succès de l'inscription.";
                    System.out.println("ligne login: 214= ");
                    Client client = new Client();
                    client.setLogin(email2);
                    client.setPassword(motDePasse);
                    client.setNom(nom);
                    client.setPrenom(prenom);
                    client.setAdresse(adresse);
                    client.setTelephone(telephone);
                    appDAO.create(client);

                    // ENVOYER UN MAIL de validation d'inscrition
                    new SendMail().sendMail(client);

                    request.setAttribute("Message", "resultMessageMail");
                    request.setAttribute("email", email2);
                    request.setAttribute("adresse", adresse);
                    request.setAttribute("telephone", telephone);

                    request.setAttribute("session", session);

                    getServletContext().getRequestDispatcher("/signupwelcome.jsp").forward(request, response);

                } else {

                    resultat = "Échec de l'inscription.";
                    /* Stockage du résultat et des messages d'erreur dans l'objet request */
                    request.setAttribute(ATT_ERREURS, erreurs);
                    request.setAttribute(ATT_RESULTAT, resultat);

                    /* Transmission de la paire d'objets request/response à notre JSP */
                    this.getServletContext().getRequestDispatcher("/enregistrer.jsp").forward(request, response);
                }

            }
            break;

            case "updateClient": {

                if (request.getParameter("modif") != null && request.getParameter("modif").equals("true")) {
                    Client clientNew = new Client();
                    clientNew.setId_client(Integer.parseInt(session.getAttribute("id_client").toString()));
                    clientNew.setLogin(request.getParameter("login"));
                    clientNew.setPassword(request.getParameter("password"));
                    clientNew.setNom(request.getParameter("nom"));
                    clientNew.setPrenom(request.getParameter("prenom"));
                    clientNew.setAdresse(request.getParameter("adresse"));
                    clientNew.setTelephone(request.getParameter("telephone"));

                    appDAO.update(clientNew);

                }
                Client clientOld = appDAO.readClient((String) session.getAttribute("login"));

                session.setAttribute("nom", clientOld.getNom());
                session.setAttribute("prenom", clientOld.getPrenom());

                request.setAttribute("id", clientOld.getId_client());
                request.setAttribute("login", clientOld.getLogin());
                request.setAttribute("password", clientOld.getPassword());
                request.setAttribute("nom", clientOld.getNom());
                request.setAttribute("prenom", clientOld.getPrenom());
                request.setAttribute("adresse", clientOld.getAdresse());
                request.setAttribute("telephone", clientOld.getTelephone());

                this.getServletContext().getRequestDispatcher("/JSP_boundary/updateClient.jsp").forward(request, response);

            }
            break;

            case "delete": {
                String id = request.getParameter("id");
                appDAO.delete(id);

                request.setAttribute("utilisateurs", appDAO.listerClient());

                this.getServletContext().getRequestDispatcher("/JSP/lister.jsp").forward(request, response);

            }
            break;

            case "login": {
                System.out.println("case login: 274= " + login);
                login = request.getParameter("login");
                String password = request.getParameter("password");
                if (login == null && password == null) {
                    this.getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
                    return; // ATTENTION il faut obliger le control de flow de sortir de la methode doGet
                    // SI NON 
                    //java.lang.IllegalStateException: Cannot forward after response has been committed
                    //at org.apache.catalina.core.ApplicationDispatcher.doDispatch(ApplicationDispatcher.java:448)

                }
                boolean b = appDAO.login(login, password);
                //System.out.println("com.octest.servlets.Test.doPost() utilisateurDao.login= " + b);
                if (b == true) {

                    request.setAttribute("utilisateurs", appDAO.listerClient());
                    session.setAttribute("id_client", (Integer) appDAO.getIdClient(login, password));
                    session.setAttribute("login", login);
                    session.setAttribute("nom", appDAO.getClient(appDAO.getIdClient(login, password)).getNom());
                    this.getServletContext().getRequestDispatcher("/JSP_boundary/Market_Farmigo Food Community.jsp").forward(request, response);

                    //lister
                } else if (b == false) {
                    //sinon mettre password ko
                    this.getServletContext().getRequestDispatcher("/signup.jsp").forward(request, response);

                }
            }
            break;

            case "DeleteLigneCommande": {
                System.out.println("329---00000000000000000000000000000000000000  DeleteLigneCommande");
                int id_client = Integer.parseInt(session.getAttribute("id_client").toString());
                Commande commandeEnCours = appDAO.verifExistCommandeEnCours(id_client);

                appDAO.deleteLigneCommande(Integer.parseInt(request.getParameter("id_lignecommande")));

                request.setAttribute("id_client", id_client);
                request.setAttribute("Commande.id_commande", commandeEnCours.getId_commande());
                
                request.setAttribute("quantite", request.getParameter("quantite"));
                
                System.out.println("DeleteLigneCommande :: request.getParameter(\"id_lignecommande\") ==> " + request.getParameter("id_lignecommande"));
                System.out.println("DeleteLigneCommande ::: request.getParameter(\"quantite\")) ==> " + request.getParameter("quantite"));
            
                if(request.getParameter("page").equals("1")) {
                    
                   System.out.println("***********************>>>>>>>   DeleteLigneCommande  ");
                   
                   response.setContentType("text/json;charset=UTF-8");
                
                   try (PrintWriter out = response.getWriter()) {

                       AppDAO appDAO = AppDaoImpl.getInstanceSingleton(DaoFactory.getInstance());
                       JSONObject json = appDAO.actionUserDeleteLigneCommande(request.getParameter("id_client"));
                   
                       out.print(json);
                   }
                    
                } else {
                   this.getServletContext().getRequestDispatcher("/JSP_boundary/Order _ Farmigo Food Community.jsp?id_client=" + id_client + "&id_commande=" + commandeEnCours.getId_commande() + "").forward(request, response);
                    //    this.getServletContext().getRequestDispatcher("/JSP/MyBagCommande.jsp?id_client=" + id_client + "&id_commande=" + commandeEnCours.getId_commande() + "").forward(request, response);
                }
            }
            break;

            case "MyBagLink": {
                System.out.println("32000000000000000000000000000000000000000");
                System.out.println("DEBUG :  session.getAttribute(\"id_client\") ==> " + session.getAttribute("id_client"));
                int id_client = Integer.parseInt(session.getAttribute("id_client").toString());
                System.out.println("DEBUG :  ID_CLIENT =" + id_client);
                Commande commandeEnCours = appDAO.verifExistCommandeEnCours(id_client);

                if (commandeEnCours == null) {
                    commandeEnCours = appDAO.createCommande("0", getDateAujourdhui(), id_client, "ENCOURS");
                }

                request.setAttribute("id_client", id_client);
                request.setAttribute("Commande.id_commande", commandeEnCours.getId_commande());
                request.setAttribute("quantite", request.getParameter("quantite"));
               // this.getServletContext().getRequestDispatcher("/JSP/MyBagCommande.jsp?id_client=" + id_client + "&id_commande=" + commandeEnCours.getId_commande() + "").forward(request, response);
                this.getServletContext().getRequestDispatcher("/JSP_boundary/Order _ Farmigo Food Community.jsp?id_client=" + id_client + "&id_commande=" + commandeEnCours.getId_commande() + "").forward(request, response);

            }
            break;

            case CmdController.MyBagButtonAdd: {

                System.out.println("DEBUG case CmdController.ADDBUTTON 368:");

                int id_client = Integer.parseInt(request.getParameter("id_client"));
                int id_produit = Integer.parseInt(request.getParameter("id_produit"));
                System.out.println("406>>>>>>>>>>>>>>>id_client :  id_client =" + id_client);
                System.out.println("406>>>>>>>>>>>>>>>id_produit :  id_produit =" + id_produit);

                Produit produit = appDAO.getProduit(id_produit);
                Commande commande2 = appDAO.verifExistCommandeEnCours(id_client);
                int id_commande = 0;

                if (commande2 == null) {

                    Commande commande3 = appDAO.createCommande("0", getDateAujourdhui(), id_client, "ENCOURS");

                    request.setAttribute("Commande.id_commande", commande3.getId_commande());
                    request.setAttribute("Commande.total", commande3.getTotal());
                    request.setAttribute("Commande.date_commande", commande3.getDate_commande());
                    request.setAttribute("Commande.id_client", commande3.getId_client());
                    request.setAttribute("Commande.etat_cmd", commande3.getEtat_cmd());

                } else {
                    id_commande = commande2.getId_commande();
                    String total = commande2.getTotal();
                    String date_commande = commande2.getTotal();
                    id_client = commande2.getId_client();
                    String etat_cmd = commande2.getEtat_cmd();

                    request.setAttribute("Commande.id_commande", id_commande);
                    request.setAttribute("Commande.total", total);
                    request.setAttribute("Commande.date_commande", date_commande);
                    request.setAttribute("Commande.id_client", id_client);
                    request.setAttribute("Commande.etat_cmd", etat_cmd);

                }

                LigneCommande lignecommande = appDAO.verifExistLigneCommande(id_commande, id_produit);
                System.out.println("406>>>>>>>>>>>>>>>lignecommande :  lignecommande =" + lignecommande);

                if (lignecommande == null) {

                    String[] prix_unitaireSplit = produit.getPrix_unitaire().split("/");
                    String prix_unitaire = prix_unitaireSplit[0];

                    BigDecimal prix_unitaire_bd = new BigDecimal(prix_unitaire);
                    BigDecimal quantite = BigDecimal.valueOf(1);

                    BigDecimal discount = new BigDecimal(produit.getDiscount());

                    BigDecimal centbd = BigDecimal.valueOf(100);
                    BigDecimal total1 = prix_unitaire_bd.multiply(quantite);
                    

//                    BigDecimal tva = new BigDecimal(produit.getTVAproduit());
//                    BigDecimal total1_tva = total1.multiply(tva.divide(centbd));
//                    BigDecimal total1PlusTVA = total1.add(total1_tva);
//
//                    BigDecimal total2 = total1PlusTVA.multiply(discount.divide(centbd));
//                    BigDecimal total3 = total1PlusTVA.subtract(total2);
                    
                    
                    String moneyString = total1.toString();

                    appDAO.insererLigneCommande(0, id_produit, produit.getDiscount(), "1", moneyString, id_commande);
                    //  appDAO.insererLigneCommande(0, id_produit,"0", "1", moneyString, id_commande);

                    // Ajouter code permettant  de recalculer le total de la commande id_commande
                    appDAO.recalculerTotalCmd(id_commande, total1);

                    request.setAttribute("LigneCommande.id_lignecommande", 0);
                    request.setAttribute("LigneCommande.id_produit", id_produit);
                    request.setAttribute("LigneCommande.promotion", produit.getDiscount());
                    request.setAttribute("LigneCommande.quantite", "1");
                    request.setAttribute("LigneCommande.prix_soustotal", total1);
                    request.setAttribute("LigneCommande.id_commande", id_commande);

                } else {

                    int id_lignecommande = lignecommande.getId_lignecommande();
                    id_produit = lignecommande.getId_produit();
                    String promotion = lignecommande.getPromotion();
                    String quantite = lignecommande.getQuantite();
                    String prix_soustotal = lignecommande.getPrix_soustotal();
                    id_commande = lignecommande.getId_commande();

                    request.setAttribute("LigneCommande.id_lignecommande", id_lignecommande);
                    request.setAttribute("LigneCommande.id_produit", id_produit);
                    request.setAttribute("LigneCommande.promotion", promotion);
                    request.setAttribute("LigneCommande.quantite", quantite);
                    request.setAttribute("LigneCommande.prix_soustotal", prix_soustotal);
                    request.setAttribute("LigneCommande.id_commande", id_commande);
                }

                if (produit == null) {

                } else {

                    id_produit = produit.getId_produit();
                    String nom = produit.getNom();
                    String description = produit.getDescription();
                    String discount = produit.getDiscount();
                    String photo = produit.getPhoto();
                    String prix_unitaire = produit.getPrix_unitaire();
                    int id_producteur = produit.getId_producteur();

                    request.setAttribute("Produit.id_produit", id_produit);
                    request.setAttribute("Produit.nom", nom);
                    request.setAttribute("Produit.description", description);
                    request.setAttribute("Produit.discount", discount);
                    request.setAttribute("Produit.photo", photo);
                    request.setAttribute("Produit.prix_unitaire", prix_unitaire);
                    request.setAttribute("Produit.id_producteur", id_producteur);

                }

                request.setAttribute("id_client", id_client);
                request.setAttribute("id_produit", id_produit);
                //this.getServletContext().getRequestDispatcher("/Market_Farmigo Food Community.jsp").forward(request, response);
                //  this.getServletContext().getRequestDispatcher("/Market_01.jsp").forward(request, response);
                
                
                System.out.println(" UPDATE_ID_LIGNECOMMANDE");
                
                
                response.setContentType("text/json;charset=UTF-8");
                
                try (PrintWriter out = response.getWriter()) {

                    AppDAO appDAO = AppDaoImpl.getInstanceSingleton(DaoFactory.getInstance());
                    JSONObject json = appDAO.getIDLigneCommandeAJAX( id_client,  id_produit);
                    
                    out.print(json);
                }

            }
            break;

            case CmdController.AADDBUTTON: {

                System.out.println("DEBUG case CmdController.AADDBUTTON 368:");

                int id_client = Integer.parseInt(request.getParameter("id_client"));
                int id_produit = Integer.parseInt(request.getParameter("id_produit"));

                Produit produit = appDAO.getProduit(id_produit);

                Commande commande2 = appDAO.verifExistCommandeEnCours(id_client);

                System.out.println("DEBUG case CmdController.id_client 368:" + id_client);
                System.out.println("DEBUG case CmdController.id_produit 368:" + id_produit);
                System.out.println("DEBUG case CmdController.produit 368:" + produit);

                int id_commande = 0;

                if (commande2 == null) {

                    Commande commande3 = appDAO.createCommande("0", getDateAujourdhui(), id_client, "ENCOURS");

                    request.setAttribute("Commande.id_commande", commande3.getId_commande());
                    request.setAttribute("Commande.total", commande3.getTotal());
                    request.setAttribute("Commande.date_commande", commande3.getDate_commande());
                    request.setAttribute("Commande.id_client", commande3.getId_client());
                    request.setAttribute("Commande.etat_cmd", commande3.getEtat_cmd());

                } else {
                    id_commande = commande2.getId_commande();
                    String total = commande2.getTotal();
                    String date_commande = commande2.getTotal();
                    id_client = commande2.getId_client();
                    String etat_cmd = commande2.getEtat_cmd();

                    request.setAttribute("Commande.id_commande", id_commande);
                    request.setAttribute("Commande.total", total);
                    request.setAttribute("Commande.date_commande", date_commande);
                    request.setAttribute("Commande.id_client", id_client);
                    request.setAttribute("Commande.etat_cmd", etat_cmd);

                }

                LigneCommande lignecommande = appDAO.verifExistLigneCommande(id_commande, id_produit);

                if (lignecommande == null) {

                    String[] prix_unitaireSplit = produit.getPrix_unitaire().split("/");

                    String prix_unitaire = prix_unitaireSplit[0];

                    BigDecimal prix_unitaire_bd = new BigDecimal(prix_unitaire);
                    BigDecimal quantite = BigDecimal.valueOf(1);

                    BigDecimal discount = new BigDecimal(produit.getDiscount());
                    BigDecimal centbd = BigDecimal.valueOf(100);
                    BigDecimal total1 = prix_unitaire_bd.multiply(quantite);

//                    BigDecimal tva = new BigDecimal(produit.getTVAproduit());
//                    BigDecimal total1_tva = total1.multiply(tva.divide(centbd));
//                    BigDecimal total1PlusTVA = total1.add(total1_tva);
//                    BigDecimal total2 = total1PlusTVA.multiply(discount.divide(centbd));
//                    BigDecimal total3 = total1PlusTVA.subtract(total2);
                    
                    
                    
                    String moneyString = total1.toString();

                    appDAO.insererLigneCommande(0, id_produit, produit.getDiscount(), "1", moneyString, id_commande);

                    // Ajouter code permettant  de recalculer le total de la commande id_commande
                    appDAO.recalculerTotalCmd(id_commande, total1);

                    request.setAttribute("LigneCommande.id_lignecommande", 0);
                    request.setAttribute("LigneCommande.id_produit", id_produit);
                    request.setAttribute("LigneCommande.promotion", produit.getDiscount());
                    request.setAttribute("LigneCommande.quantite", "1");
                    request.setAttribute("LigneCommande.prix_soustotal", total1);
                    request.setAttribute("LigneCommande.id_commande", id_commande);

                } else {

                    int id_lignecommande = lignecommande.getId_lignecommande();
                    id_produit = lignecommande.getId_produit();
                    String promotion = lignecommande.getPromotion();
                    String quantite = lignecommande.getQuantite();
                    String prix_soustotal = lignecommande.getPrix_soustotal();
                    id_commande = lignecommande.getId_commande();

                    request.setAttribute("LigneCommande.id_lignecommande", id_lignecommande);
                    request.setAttribute("LigneCommande.id_produit", id_produit);
                    request.setAttribute("LigneCommande.promotion", promotion);
                    request.setAttribute("LigneCommande.quantite", quantite);
                    request.setAttribute("LigneCommande.prix_soustotal", prix_soustotal);
                    request.setAttribute("LigneCommande.id_commande", id_commande);
                }

                if (produit == null) {

                } else {

                    id_produit = produit.getId_produit();
                    String nom = produit.getNom();
                    String description = produit.getDescription();
                    String discount = produit.getDiscount();
                    String photo = produit.getPhoto();
                    String prix_unitaire = produit.getPrix_unitaire();
                    int id_producteur = produit.getId_producteur();

                    request.setAttribute("Produit.id_produit", id_produit);
                    request.setAttribute("Produit.nom", nom);
                    request.setAttribute("Produit.description", description);
                    request.setAttribute("Produit.discount", discount);
                    request.setAttribute("Produit.photo", photo);
                    request.setAttribute("Produit.prix_unitaire", prix_unitaire);
                    request.setAttribute("Produit.id_producteur", id_producteur);

                }

                request.setAttribute("id_client", id_client);
                request.setAttribute("id_produit", id_produit);
                //  this.getServletContext().getRequestDispatcher("/Market_Farmigo Food Community.jsp").forward(request, response);
                this.getServletContext().getRequestDispatcher("/JSP_boundary/Market_01.jsp").forward(request, response);

            }
            break;

            case CmdController.PWDPERDU: {

                Map<String, String> erreurs = new HashMap<String, String>();
                /* Validation du champ email2. */
                try {
                    modelEnregistrerJSP.validationEmail(request.getParameter("email"));
                } catch (Exception e) {
                    erreurs.put(CHAMP_EMAIL, e.getMessage());
                }

                new SendMail().sendMailPwdperdu(request.getParameter("login"));

                this.getServletContext().getRequestDispatcher("/loginperdumessage.jsp").forward(request, response);
            }
            break;

            case CmdController.VALIDATION_SIGNUP: {

                String mail = request.getParameter("login");
                appDAO.validerInscriptionParMail(mail);
                this.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
            }
            break;

            case CmdController.ENVOYER_MAIL: {

                if (request.getParameter("listfrom") != null && request.getParameter("listfrom").equals("true")) {
                    getServletContext().getRequestDispatcher("/JSP_boundary/mail_form.jsp").forward(request, response);
                    return;
                } else {

                    new SendMail().sendMailAdvance("dor@orange.fr", request.getParameter("subject"), request.getParameter("content"));
//  new SendMail().sendMailAdvance(request.getParameter("emailTo"), request.getParameter("subject"), request.getParameter("content"));

                    getServletContext().getRequestDispatcher("/mail_form_envoye.jsp").forward(request, response);
                }
            }
            break;

            case CmdController.PAYER: {

                int id_client = Integer.parseInt(session.getAttribute("id_client").toString());

                Commande commandeEnCours = appDAO.verifExistCommandeEnCours(id_client);

                if (commandeEnCours != null) {
                    request.setAttribute("Commande.id_commande", commandeEnCours.getId_commande());
                }

                request.setAttribute("id_client", id_client);

                String pageMail = genererHTML_EnvoyerMailRecuPayement(request, session);

                System.out.println("DEBUG MAIL PAYER = " + pageMail);

                new SendMail().sendMailVoiciRecuPayement(appDAO.getClient(id_client).getLogin(), pageMail);

                appDAO.updateStatusCommande(commandeEnCours.getId_commande(), "PAYE");

                this.getServletContext().getRequestDispatcher("/JSP/MyBagCommande.jsp").forward(request, response);
            }
            break;

            case "countlignecmd": {

                System.out.println("CASE countlignecmd");
                response.setContentType("text/json;charset=UTF-8");
                try (PrintWriter out = response.getWriter()) {

                    AppDAO appDAO = AppDaoImpl.getInstanceSingleton(DaoFactory.getInstance());
                    JSONObject json = appDAO.getNbrLigneCmd2(session.getAttribute("id_client").toString());

                    out.print(json);
                }
            }  
            break;
            
            
            case "miseajourdutotal": {

                System.out.println("CASE nbrproduitsdanspanier");
                response.setContentType("text/json;charset=UTF-8");
                try (PrintWriter out = response.getWriter()) {

                    AppDAO appDAO = AppDaoImpl.getInstanceSingleton(DaoFactory.getInstance());
                    JSONObject json = appDAO.calculTotalNbrDeProduitsPanier(session.getAttribute("id_client").toString());

                    out.print(json);
                }
            }  
            break;
            
            case  CmdController.UPDATE_ID_LIGNECOMMANDE: {
                
                System.out.println("CASE UPDATE_ID_LIGNECOMMANDE");
                
                int id_client = Integer.parseInt(request.getParameter("id_client"));
                int id_produit = Integer.parseInt(request.getParameter("id_produit"));
               
                response.setContentType("text/json;charset=UTF-8");
                
                try (PrintWriter out = response.getWriter()) {

                    AppDAO appDAO = AppDaoImpl.getInstanceSingleton(DaoFactory.getInstance());
                    JSONObject json = appDAO.getIDLigneCommandeAJAX( id_client,  id_produit);
                    
                    out.print(json);
                }
            } 
            break;

            case CmdController.calculPanier: {
                
                String id_clientStr = request.getParameter("id_client");

                response.setContentType("text/json;charset=UTF-8");
                try (PrintWriter out = response.getWriter()) {

                    AppDAO appDAO = AppDaoImpl.getInstanceSingleton(DaoFactory.getInstance());
                    System.out.println("CmdController.CALCUL_PANIER :: request.getParameter(\"id_lignecommande\") ==> " + request.getParameter("id_lignecommande"));
                    System.out.println("CmdController.CALCUL_PANIER :: request.getParameter(\"quantite\")) ==> " + request.getParameter("quantite"));
                    System.out.println("CmdController.CALCUL_PANIER :: DEBUG appDAO = " + appDAO);
                    JSONObject json = appDAO.calculTotauxCommande(Integer.parseInt(request.getParameter("id_lignecommande")), Integer.parseInt(request.getParameter("quantite")), id_clientStr);
                    System.out.println("DEBUG json = " + json);
                    out.print(json);
                }
            }
            break;

            case "listCommandes": {

                int id_client = Integer.parseInt(session.getAttribute("id_client").toString());

                request.setAttribute("id_client", id_client);

                this.getServletContext().getRequestDispatcher("/JSP_boundary/ListCommandes.jsp?id_client=" + id_client + "").forward(request, response);

            }
            break;

            case "mail_form": {

                this.getServletContext().getRequestDispatcher("/JSP_boundary/mail_form.jsp").forward(request, response);

            }
            break;

            case "logout": {

                session.invalidate();

                this.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
            }
            break;

            case "Producteurs": {

                this.getServletContext().getRequestDispatcher("/JSP_boundary/Producteur_Farmigo Food Community.jsp").forward(request, response);
                return;
            }

            case "Market": {

                this.getServletContext().getRequestDispatcher("/JSP_boundary/Market_Farmigo Food Community.jsp").forward(request, response);

            }
            break;

            case "Market_01": {

                this.getServletContext().getRequestDispatcher("/JSP_boundary/Market_01.jsp").forward(request, response);

            }
            break;

            default: {
            }
            break;
        }
    }

    public String genererJSP_HTML() {
        String inputLine1 = "";
        try {

            URL url = new URL("http://localhost:8080/test_mvc_crud/JSP/MyBagCommande.jsp");
            URLConnection uc = url.openConnection();
            BufferedReader in = new BufferedReader(new InputStreamReader(uc.getInputStream()));

            String inputLine2 = "";

            while ((inputLine2 = in.readLine()) != null) {
                inputLine1 += inputLine2;
            }
            in.close();
        } catch (MalformedURLException ex) {
            ex.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return inputLine1;
    }

    private String getDateAujourdhui() {

        SimpleDateFormat formater = null;

        Date aujourdhui = new Date();

        formater = new SimpleDateFormat("dd-MM-yy");
        System.out.println(formater.format(aujourdhui));

        return formater.format(aujourdhui);
    }

    public String genererHTML_EnvoyerMailRecuPayement(HttpServletRequest request, HttpSession session) throws ServletException, IOException {
        String pageMail = "";

        AppDAO appDao = AppDaoImpl.getInstanceSingleton(DaoFactory.getInstance());

        int id_client = ((Integer) session.getAttribute("id_client")).intValue();

        Commande commandeStatusENCOURS = appDao.verifExistCommandeEnCours(id_client);

        List<LigneCommande> listLigneCommande = appDao.listerLigneCommande(((Integer) request.getAttribute("Commande.id_commande")).intValue());

        pageMail = "<!DOCTYPE html>\n"
                + "<html>\n"
                + "    <head>\n"
                + "        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n"
                + "\n"
                + "        <title>MyBag</title>\n"
                + "        <meta charset=\"utf-8\">\n"
                + "        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n"
                + "        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n"
                + "        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n"
                + "    </head>\n"
                + "    <body>\n"
                + "        <p> -------------------------------------------------------  "
                + "<img src=\"https://matplotlib.org/_images/simple_plot.png\" class=\"share-picture img-responsive \" alt=\" testIMGAGE\"/>"
                + "</p>\n"
                + "\n"
                + "        <div class=\"container\">\n"
                + "<h2>Table commande ENCOURS </h2>\n"
                + "           <p> Cette table permet d'afficher la commande  PAYER  </p> \n"
                + "\n"
                + "            <table class=\"table\">\n"
                + "                <thead>\n"
                + "                    <tr>\n"
                + "                        <th>photo</th>\n"
                + "                        <th>nom</th>\n"
                + "                        <th>description </th>\n"
                + "                        <th>prix unitaire</th>\n"
                + "                        <th>quantite</th>\n"
                + "                        <th>promotion</th>\n"
                + "                        <th>prixsoustotal</th>\n"
                + "                        \n"
                + "                    </tr>\n"
                + "                </thead>\n"
                + "                <tbody>\n";

        if (commandeStatusENCOURS != null && (appDao.verifExistCommandeEnCours(id_client) != null)) {

            for (LigneCommande ligneCommande : listLigneCommande) {

                String prix_unitaire = (appDao.getProduit(ligneCommande.getId_produit())).getPrix_unitaire();
                String quantite = ligneCommande.getQuantite();
                String promotion = (appDao.getProduit(ligneCommande.getId_produit())).getDiscount();
                String prix_soustotal = ligneCommande.getPrix_soustotal();

                int id_lignecommande = ligneCommande.getId_lignecommande();

                pageMail += "<tr>"
                        + "<td> <img src =\"http://213.254.136.152:8080/test_mvc_crud/" + (appDao.getProduit(ligneCommande.getId_produit())).getPhoto() + "class=\"share-picture img-responsive\" alt =\"Salut\"> </td>"
                        + "<td>" + (appDao.getProduit(ligneCommande.getId_produit())).getNom() + "</td>"
                        + "<td>" + (appDao.getProduit(ligneCommande.getId_produit())).getDescription() + " </td>"
                        + "<td>" + prix_unitaire + "</td>"
                        + "<td>  <label id=\"id_quantite\" value=\"" + quantite + "\"</label> </td>"
                        + "<td>" + promotion + "% </td>"
                        + "<td> <label id=\"id_soustotal\">" + prix_soustotal + "</label>  </td>"
                        + "<td>  "
                        + "<td> <label id=\"id_lignecommande\">" + id_lignecommande + "</label>  </td>"
                        + "</tr>"
                
                
                 + "<td>  "
                                                                        + "<form method=\"POST\" action=\"ServletController\" >"
                                                                        + " <input id=\"abcd1\" type=\"hidden\" name=\"commande\" value=\"DeleteLigneCommande\"/>"
                                                                        + " <input id=\"abcd2\" type=\"hidden\" name=\"id_lignecommande\" value=\"" + id_lignecommande + "\"/> "
                                                                        + " <button id=\"abcd3\" type=\"submit\" class=\"button add-btn add pull-right\">Delete</button> "
                                                                        + "</form> "
                                                                        + "</td>";
            }
        }

        pageMail += "\n "
                + "\n"
                + "</tbody>\n"
                + "</table>\n"
                + " -----------------------------------------------------------------------  \n"
                + "\n"
                
                + new SendMail().sendMessagePageWeb(session)
                
                + "</body> \n"
                + "</html>";
        
        
        
        

        return pageMail;
    }

}
