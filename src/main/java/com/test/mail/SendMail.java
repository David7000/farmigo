package com.test.mail;

import com.test.entity_lifecycle.Client;
import com.test.entity_lifecycle.Commande;
import com.test.entity_lifecycle.LigneCommande;
import com.test.entity_lifecycle.AppDAO;
import com.test.entity_lifecycle.DaoFactory;
import com.test.entity_lifecycle.AppDaoImpl;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.UnknownHostException;
import java.text.NumberFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Properties;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

//  http://www.codejava.net/java-ee/jsp/sending-e-mail-with-jsp-servlet-and-javamail
// http://www.java2s.com/Code/Java/Network-Protocol/SendingMailUsingSockets.htm
public class SendMail {

    private String host = "smtp.gmail.com";    //   "SENDER-EMAIL-SMTP-ADDRESS"
    private String userName = "aa65091@gmail.com"; // "SENDER-EMAIL-SMTP-USERNAME" 
    private String password = "azerty123+"; // "SENDER-EMAIL-SMTP-PASSWORD" 
    private String port = "587";// "SENDER-EMAIL-SMTP-PORT" 
    private String starttls = "true"; //"SENDER-EMAIL-SMTP-STARTTLS" // https://en.wikipedia.org/wiki/Opportunistic_TLS
    private String socketFactoryClass = "";  //"SENDER-EMAIL-SMTP-SOCKET-CLASS" 
    private String fallback = "";// "SENDER-EMAIL-SMTP-ALLOW-FALLBACK"  

    public SendMail() {

    }

    public void sendMail(Client utilisateur) {
        // reads form fields
        String emailTo = utilisateur.getLogin();
        String subject = "email de validation";

        String ip = "";
        String loopbackIP = "";

        try {
             
                    ip = InetAddress.getLocalHost().getHostAddress().toString();
            loopbackIP = InetAddress.getLoopbackAddress().getHostAddress();
            System.out.println("loopbackIP"+loopbackIP);
            System.out.println(ip);
            
        } catch (UnknownHostException e) {
            e.printStackTrace();
        }

        //String bodyy = "Valider avec cette URL1 = " + "http://"+loopbackIP+":8080/test_mvc_crud/ServletController?commande=mail_create&login="+emailTo;
        String body = " <!DOCTYPE html>\n"
                + "\n"
                + "<html>\n"
                + "    <head>\n"
                + "        <title>Validez votre inscription</title>\n"
                + "        <meta charset=\"UTF-8\">\n"
                + "        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
                + "    </head>\n"
                + "    <body>\n"
                + "        <div>Validation inscription</div>\n"
                + "        \n"
                + "        Veuillez cliquer sur le lien de validation inscription.\n"
                + "        \n"
                + "        Note : Si ce lien web ne fonctionne pas alors veuillez faire un copier/coler du lien dans votre navigateur dans la zone URLL..."
                + "   " + "<a href=\"http://" + loopbackIP + ":8080/ServletController?commande=mail_create&login=" + emailTo + "\">http://" + loopbackIP + ":8080/ServletController?commande=mail_create&login=" + emailTo + "</a>"
                + "<P>"
                + ""
                + ""
                + "------------LOGO :  --------------------"
                + "</p>"
                + "<img src=\"http://" + loopbackIP + ":8080/images/farmigo-app-icon.png\"/>"
                + "</body>"
                + "</html>";

        System.out.println("content = " + body);
        String resultMessage = "";

        try {
            sendMailAdvance(emailTo, subject, body);
            resultMessage = "le msg a été envoyé";
        } catch (Exception ex) {
            ex.printStackTrace();
            resultMessage = "erreur: " + ex.getMessage();
        }
    }

    //pass perdu
    public boolean sendMailAdvance(String emailTo, String subject, String body) {

        // https://javamail.java.net/nonav/docs/api/com/sun/mail/smtp/package-summary.html
        try {
            Properties properties = System.getProperties();
            properties.put("mail.smtp.user", userName);
            properties.put("mail.smtp.host", host);
            properties.put("mail.smtp.auth", "true");
            properties.put("mail.smtp.debug", "true");

            if (!"".equals(port)) {
                properties.put("mail.smtp.port", port);
                properties.put("mail.smtp.socketFactory.port", port);
            }

            if (!"".equals(starttls)) {
                properties.put("mail.smtp.starttls.enable", starttls);
            }

            if (!"".equals(socketFactoryClass)) {
                properties.put("mail.smtp.socketFactory.class", socketFactoryClass);
            }

            if (!"".equals(fallback)) {
                properties.put("mail.smtp.socketFactory.fallback", fallback);
            }

            //Session session = Session.getDefaultInstance(props, null);
            Session session = Session.getInstance(properties, new javax.mail.Authenticator() {
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication("loginMail-smtp", password);
                }
            });

            session.setDebug(true);

            MimeMessage msg = new MimeMessage(session);
            msg.setFrom(new InternetAddress(userName));
            msg.setSubject(subject);
            msg.setText(body, "ISO-8859-1");
            msg.setSentDate(new Date());
            msg.setHeader("content-Type", "text/html;charset=\"ISO-8859-1\"");
            msg.addRecipient(Message.RecipientType.TO, new InternetAddress(emailTo));
            // msg.setRecipients(Message.RecipientType.TO, toAddresses);
            msg.saveChanges();

            Transport transport = session.getTransport("smtp");
            transport.connect(host, userName, password);
            transport.sendMessage(msg, msg.getAllRecipients());
            transport.close();
            System.out.println("Sent message successfully....");
            return true;
        } catch (Exception mex) {
            mex.printStackTrace();
            return false;
        }
    }

    public void sendMailPwdperdu(String emailTo) {

        sendMailAdvance(emailTo, "Voici votre mot de passe", "mot de passe =" + AppDaoImpl.getInstanceSingleton(DaoFactory.getInstance()).pwdPerdu(emailTo));

    }

    public void sendMailValidMoiInscription(String emailTo) {

        String body = " <!DOCTYPE html>\n"
                + "\n"
                + "<html>\n"
                + "    <head>\n"
                + "        <title>Validez votre inscription</title>\n"
                + "        <meta charset=\"UTF-8\">\n"
                + "        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
                + "    </head>\n"
                + "    <body>\n"
                + "        <div>Validation inscription</div>\n"
                + "        \n"
                + "        Veuillez cliquer sur le lien de validation inscription.\n"
                + "        \n"
                + "        Note : Si ce lien web ne fonctionne pas alors veuillez faire un copier/coler du lien dans votre navigateur dans la zone URL."
                + "   " + "<a href=\"http://" + "88.162.144.233" + ":8080/ServletController?commande=mail_create&login=" + emailTo + "\">http://" + "88.162.144.233" + ":8080/ServletController?commande=mail_create&login=" + emailTo + "</a>"
                + "<P>"
                + ""
                + ""
                + "------------LOGO :  --------------------"
                + "</p>"
                + "<img src=\"http://" + "88.162.144.233" + ":8080/test_mvc_crud/images/farmigo-app-icon.png\"/>"
                + "</body>"
                + "</html>";

        sendMailAdvance(emailTo, "MailValidMoiInscription", body);
    }

    public void sendMailVoiciRecuPayement(String emailTo, String body) {

        sendMailAdvance(emailTo, "MailVoiciRecuPayement", body);

    }
    
    
    
    public String sendMessagePageWeb(HttpSession session)
    {
        AppDAO appDao = AppDaoImpl.getInstanceSingleton(DaoFactory.getInstance());
        
        int id_client = ((Integer) session.getAttribute("id_client")).intValue();
           
       Commande commandeStatusENCOURS = appDao.verifExistCommandeEnCours(id_client);

String pageMail2 = "<div>";
pageMail2 =  pageMail2 + "Nom Client :"+ appDao.getClient(id_client).getNom();
pageMail2 = pageMail2 + "Prenom Client :"+ appDao.getClient(id_client).getPrenom();
pageMail2 = pageMail2+"</div>";



pageMail2 =  pageMail2 + "<div class=\"container\">";

pageMail2 =  pageMail2 + "<p>Commande ENCOURS : ";
                        if (appDao.verifExistCommandeEnCours(id_client) != null) {
                             pageMail2 =  pageMail2 + " "+ (appDao.verifExistCommandeEnCours(id_client).getId_commande());
                        }
                                            
              pageMail2 =  pageMail2 +" </p>";            



            pageMail2 =  pageMail2 +" <table class=\"table\">"
                                           +" <thead> "
                                                +"<tr> "
                                                    +"<th>photo</th> "
                                                    +"<th>nom</th> "
                                                    +"<th>description </th> "
                                                    +"<th>TVA</th> "                      
                                                    +"<th>prix unitaire TTC</th> "
                                                    +"<th>discount</th> "
                                                    +"<th>quantite</th> "
                                                    +"<th>promotion</th> "
                                                    +"<th>prixsoustotal TTC</th> "                                                  
                                                    +"<th>ID_ligneCmd</th> "
                                                    +"<th></th> "
                                                +"</tr> "
                                            +"</thead> "
                                            +"<tbody> ";

                                            
                                              
pageMail2 =  pageMail2 + " ";
                                                    if (commandeStatusENCOURS != null && (appDao.verifExistCommandeEnCours(id_client) != null)) {

                                                        int compteur = 0;
                                                        
                                                        List<LigneCommande> listLigneCommande = appDao.listerLigneCommande(commandeStatusENCOURS.getId_commande());

                                                        for (LigneCommande ligneCommande : listLigneCommande) {
                                                            compteur = compteur + 1;

                                                            System.out.println("DEBUG code0: MyBagCommande :" + (appDao.getProduit(ligneCommande.getId_produit())));
                                                            System.out.println("DEBUG code1: MyBagCommande :" + ligneCommande);

                                                            String prix_unitaire = (appDao.getProduit(ligneCommande.getId_produit())).getPrix_unitaire();

                                                            String quantite = ligneCommande.getQuantite();

                                                            String promotion = ligneCommande.getPromotion();

                                                            String prix_soustotal = ligneCommande.getPrix_soustotal();

                                                            BigDecimal bd = new BigDecimal(prix_soustotal);
                                                            BigDecimal displayVal = bd.setScale(10, RoundingMode.HALF_EVEN);
                                                            NumberFormat frdCostFormat = NumberFormat.getCurrencyInstance(Locale.FRANCE);
                                                            String moneyPrix_sousTotalString = frdCostFormat.format(displayVal.doubleValue());

                                                            
                                                            int id_lignecommande = ligneCommande.getId_lignecommande();
                                                            String TVA = ((appDao.getProduit(ligneCommande.getId_produit())).getTVAproduit());
                                                            
                                                            int id_cmd = appDao.verifExistCommandeEnCours(id_client).getId_commande();

                                                             String total_tva = appDao.calculTotalTVAproduit(id_cmd, TVA);
                                                           
                                                                     
                   pageMail2 =  pageMail2 + " "+"<tr>"
                                                                        + "<td><img src =http://" + com.test.util.ServerHostPort.getHostDomainName() + ":" + com.test.util.ServerHostPort.PORT + "/" + (appDao.getProduit(ligneCommande.getId_produit())).getPhoto() + " class=\"share-picture img-responsive \" alt = \" ALT_PHOTO\" > </td>"
                                                                        + "<td>" + (appDao.getProduit(ligneCommande.getId_produit())).getNom() + "</td>"
                                                                        + "<td>" + (appDao.getProduit(ligneCommande.getId_produit())).getDescription() + " </td>"
                                                                        + "<td>" + (appDao.getProduit(ligneCommande.getId_produit())).getTVAproduit() + "%</td>"
                                                                        + "<td>" + prix_unitaire + "</td>"
                                                                        + "<td>" + (appDao.getProduit(ligneCommande.getId_produit())).getDiscount() + "</td>"
                                                                        + "<td>  <input  type=\"number\" class=\"" + compteur + "\" id=\"id_quantite" + compteur + "\" value=\"" + quantite + "\"  min=\"1\" max=\"3\" />  </td>"
                                                                        + "<td>" + promotion + "% </td>"
                                                                        + "<td> <label id=\"id_soustotal" + compteur + "\">" + moneyPrix_sousTotalString + "</label>  </td>"
                                                                
                                                                        + "<td> <label id=\"id_lignecommande" + compteur + "\">" + id_lignecommande + "</label>  </td>"
                                                                        + "<td>  "
                                                                        + "<form method=\"POST\" action=\"ServletController\" >"
                                                                        + " <input id=\"abcd1\" type=\"hidden\" name=\"commande\" value=\"DeleteLigneCommande\"/>"
                                                                        + " <input id=\"abcd2\" type=\"hidden\" name=\"id_lignecommande\" value=\"" + id_lignecommande + "\"/> "
                                                                        + " <button id=\"abcd3\" type=\"submit\" class=\"button add-btn add pull-right\">Delete</button> "
                                                                        + "</form> "
                                                                        + "</td>"
                                                                        + "</tr>";
                                                             
                                                        }
                                                    }
                                               

                        pageMail2 =  pageMail2 + "</tbody>"
                                            +"</table>";


                                                              
                                                
                                                if (appDao.verifExistCommandeEnCours(id_client) != null) {
                                                    pageMail2 =  pageMail2 +appDao.verifExistCommandeEnCours(id_client).toString()+"";
                                                }

                                            

                                            pageMail2 =  pageMail2 +"<table class=\"table\">"
                                                +"<thead>"
                                                    +"<tr>"
                                                        +"<th>Informations sur la commande ENCOURS </th>"
                                                        +"<th>Valeur</th>"
                                                    +"</tr>"
                                                +"</thead>"

                                                +"<tbody>"
                                                    +"<tr>"
                                                        +"<td>Commande.id_commande  </td>"
                                                        +"<td> ";
                                                            
                                                            if (appDao.verifExistCommandeEnCours(id_client) != null) {
                                                                    pageMail2 =  pageMail2 + (appDao.verifExistCommandeEnCours(id_client).getId_commande());
                                                             } 
                                                                
                                                                
                                                        pageMail2 =  pageMail2 +"</td>" 
                                                    +"</tr>"


                                                    +"<tr>"
                                                        +"<td>total TVA 20%  </td>"
                                                        +"<td>"
                                                            +"<label id=\"id_tva_vingt1\">  ";                         
                                                                
                                                                    if (appDao.verifExistCommandeEnCours(id_client) != null) {
                                                                        int id_cmd = appDao.verifExistCommandeEnCours(id_client).getId_commande();
                                                                        String total_tva = appDao.calculTotalTVAproduit(id_cmd, "20");
                                                                        pageMail2 =  pageMail2 + " "+(total_tva);
                                                                    }
                                                                
                                                          pageMail2 =  pageMail2 +" </label> "
                                                        +" </td> "
                                                    +" </tr> "

                                                    +" <tr> "
                                                        +" <td>Prix total  20%  </td> "
                                                        +" <td> "
                                                            +"<label id=\"id_tva_vingt2\"> ";
                                                                
                                                                if (appDao.verifExistCommandeEnCours(id_client) != null) {
                                                                        int id_cmd = appDao.verifExistCommandeEnCours(id_client).getId_commande();
                                                                        String prix_tva = appDao.clculerPrixTotalTVA(id_cmd, "20");
                                                                        pageMail2 =  pageMail2 + " "+ (prix_tva);
                                                                    }
                                                                
                                                            pageMail2 =  pageMail2 +" </label>"
                                                        +" </td> "
                                                    +" </tr> "  

                                                    +" <tr> "
                                                        +" <td>total TVA 10%  </td> "
                                                        +" <td> "
                                                            +" <label id=\"id_tva_dix1\">";
                                                                
                                                                 if (appDao.verifExistCommandeEnCours(id_client) != null) {
                                                                        int id_cmd = appDao.verifExistCommandeEnCours(id_client).getId_commande();
                                                                        String total_tva = appDao.calculTotalTVAproduit(id_cmd, "10");
                                                                        pageMail2 =  pageMail2 + " "+ (total_tva);
                                                                    } 
                                                                    
                                                            pageMail2 =  pageMail2 +" </label> "  
                                                        +" </td> "
                                                    +" </tr> "

                                                    +" <tr> "
                                                        +" <td>Prix total  10%  </td> "
                                                        +" <td> "
                                                            +" <label id=\"id_tva_dix2\">";
                                                                
                                                                if (appDao.verifExistCommandeEnCours(id_client) != null) {
                                                                        int id_cmd = appDao.verifExistCommandeEnCours(id_client).getId_commande();
                                                                        String prix_tva = appDao.clculerPrixTotalTVA(id_cmd, "10");
                                                                         pageMail2 =  pageMail2 + " "+ (prix_tva);

                                                                 }  
                                                                    
                                                             pageMail2 =  pageMail2 +" </label> "
                                                        +"</td>"
                                                    +"</tr>"


                                                   +" <tr> "
                                                        +" <td>total TVA 5,5%  </td> "
                                                        +" <td> "
                                                            +" <label id=\"id_tva_cinq1\"> ";
                                                                
                                                                 if (appDao.verifExistCommandeEnCours(id_client) != null) {
                                                                        int id_cmd = appDao.verifExistCommandeEnCours(id_client).getId_commande();
                                                                        String total_tva = appDao.calculTotalTVAproduit(id_cmd, "5.5");
                                                                        pageMail2 =  pageMail2 + " "+(total_tva);

                                                                    }  
                                                            pageMail2 =  pageMail2 +" </label>"
                                                        +" </td> "
                                                    +" </tr> "

                                                    +" <tr> "
                                                        +" <td>Prix total  5,5%  </td>"
                                                        +" <td> "
                                                            +"<label id=\"id_tva_cinq2\"> ";
                                                                
                                                                 if (appDao.verifExistCommandeEnCours(id_client) != null) {
                                                                        int id_cmd = appDao.verifExistCommandeEnCours(id_client).getId_commande();
                                                                        String prix_tva = appDao.clculerPrixTotalTVA(id_cmd, "5.5");
                                                                        pageMail2 =  pageMail2 +" "+ (prix_tva);
                                                                    } 
                                                                    
                                                            pageMail2 =  pageMail2 +" </label>"
                                                        +" </td> "
                                                    +" </tr>"                     


                                                    +"<tr>"
                                                        +" <td>total TVA 2,1%  </td>"
                                                        +" <td> "
                                                            +" <label id=\"id_tva_deux1\"> ";
                                                                
                                                                 if (appDao.verifExistCommandeEnCours(id_client) != null) {
                                                                        int id_cmd = appDao.verifExistCommandeEnCours(id_client).getId_commande();
                                                                        String total_tva = appDao.calculTotalTVAproduit(id_cmd, "2.1");
                                                                        pageMail2 =  pageMail2 + " "+(total_tva);

                                                                    }  
                                                                    
                                                                    
                                                            pageMail2 =  pageMail2 +" </label>"
                                                        +" </td> "
                                                    +" </tr>  "
                                                   +" <tr>"
                                                        +"<td>Prix total  2,1%  </td>"
                                                        +"<td>"

                                                            +"<label id=\"id_tva_deux2\">";
                                                                
                                                                 if (appDao.verifExistCommandeEnCours(id_client) != null) {
                                                                        int id_cmd = appDao.verifExistCommandeEnCours(id_client).getId_commande();
                                                                        String prix_tva = appDao.clculerPrixTotalTVA(id_cmd, "2.1");
                                                                        pageMail2 =  pageMail2 + " "+(prix_tva);
                                                                    } 
                                                                    
                                                            pageMail2 =  pageMail2 +" </label>"
                                                        +"</td> "
                                                    +"</tr>"                     



                                                    +"<tr>"

                                                        +"<td>Total de tous les TVA</td>"

                                                        +"<td> "
                                                            +"<label id=\"id_tva_total\">";
                                                                
                                                                 if (appDao.verifExistCommandeEnCours(id_client) != null) {
                                                                    
                                                                    Commande cmd = appDao.verifExistCommandeEnCours(id_client);
                                                                    int id_cmd = cmd.getId_commande();
                                                                    String toto = appDao.clculerTotalTousTVA(id_cmd);
                                                                    pageMail2 =  pageMail2 + " "+(toto);
                                                                 } 
                                                                 
                                                            pageMail2 =  pageMail2 +" </label>"

                                                        +" </td> "
                                                    +" </tr> "                      

                                                    +" <tr> "
                                                        +" <td>Commande.total  </td> "
                                                        +" <td> "
                                                            +" <label id=\"id_total\">";
                                                                
                                                                 if (appDao.verifExistCommandeEnCours(id_client) != null) {

                                                                        pageMail2 =  pageMail2 + " "+(appDao.calculerCommandTotal(appDao.verifExistCommandeEnCours(id_client).getId_commande()));
                                                                   }
                                                                  
                                                            pageMail2 =  pageMail2 +" </label> " 
                                                        +"</td>"
                                                    +"</tr>"

                                                    +"<tr> "
                                                        +"<td>Commande.date_commande </td>"
                                                        +"<td> ";
                                                            
                                                             if (appDao.verifExistCommandeEnCours(id_client) != null) {
                                                                 pageMail2 =  pageMail2 + " "+(appDao.verifExistCommandeEnCours(id_client).getDate_commande());
                                                            } 
                                                        
                                                       pageMail2 =  pageMail2 +"  </td>"
                                                     +"</tr>"

                                                     +"<tr>"
                                                         +"<td>Commande.id_client  </td>"
                                                         +"<td> ";
                                                            
                                                             if (appDao.verifExistCommandeEnCours(id_client) != null) {
                                                                 pageMail2 =  pageMail2 + " "+(appDao.verifExistCommandeEnCours(id_client).getId_client());
                                                            } 
                                                         
                                                         pageMail2 =  pageMail2 +"  </td>"
                                                    +"</tr>"

                                                    +"<tr> "
                                                        +" <td>Commande.etat_cmd  </td> "
                                                        +"<td>"; 
                                                             if (appDao.verifExistCommandeEnCours(id_client) != null) {
                                                                pageMail2 =  pageMail2 + " "+(appDao.verifExistCommandeEnCours(id_client).getEtat_cmd());
                                                            }
                                                            
                            pageMail2 =  pageMail2 +"  </td> "
                                                    +"</tr> "

                                                    +"<tr> "
                                                        +" <td>Envoyer </td> "
                                                        +" <td> " 
                                                           
                                                        +" </td> "
                                          +" </tr> "
                              +" </tbody> "
                   +" </table>"
   +" </div>  "; 
        
        return pageMail2;
    }

    
    ///cette methode permet de tester cette unite de test ( test unitaire)
    public static void main(String[] args) {
        Client utilisateur = new Client();
        utilisateur.setLogin("david7000@wanadoo.fr");
        utilisateur.setPassword("passwordMailTo");
        utilisateur.setNom("nom");
        utilisateur.setPrenom("prenom");

        new SendMail().sendMail(utilisateur);

           }
    
    
}
