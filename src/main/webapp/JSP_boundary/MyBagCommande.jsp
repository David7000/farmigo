<%@page import="java.text.NumberFormat"%>
<%@page import="java.util.Locale"%>
<%@page import="java.math.RoundingMode"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="org.json.simple.JSONObject"%>

<%@page import="java.util.Date,java.text.SimpleDateFormat,com.test.entity_lifecycle.AppDAO,com.test.entity_lifecycle.AppDaoImpl,com.test.entity_lifecycle.Commande,com.test.entity_lifecycle.LigneCommande,com.test.entity_lifecycle.DaoFactory,java.util.List,com.test.entity_lifecycle.Produit" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>MyBag</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="CSS/bootstrap.min.css">
        <script src="JS/bootstrap.min.js"></script>
        <script src="JS/jquery.min.js"></script>
    </head>
    <body>
        <h1>Listes des commandes</h1>

        
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

        <%

            AppDAO appDao = AppDaoImpl.getInstanceSingleton(DaoFactory.getInstance());

            pageContext.setAttribute("id_client", session.getAttribute("id_client"));

            int id_client = ((Integer) session.getAttribute("id_client")).intValue();

            System.out.println("DEBUG dans MyBagCommande.jsp code:1000 id_client= " + id_client);

            System.out.println("DEBUG  dans MyBagCommande.jsp code:2000 Commande.id_commande= " + ((Integer) request.getAttribute("Commande.id_commande")).intValue());

            List<Commande> listeCommandesStatusPL = appDao.listerCommandeStatusPL(id_client);
            pageContext.setAttribute("listeCommandesStatusPL", listeCommandesStatusPL);

            Commande commandeStatusENCOURS = appDao.verifExistCommandeEnCours(id_client);

            if (commandeStatusENCOURS == null) {
                Date dNow = new Date( );
                SimpleDateFormat ft = new SimpleDateFormat ("E yyyy.MM.dd 'at' hh:mm:ss a zzz");

                System.out.println("DEBUG Create commande : Current Date: " + ft.format(dNow));

               commandeStatusENCOURS = appDao.createCommande("0", new SimpleDateFormat("dd-MM-yy  HH:mm").format(new Date()), id_client, "ENCOURS");
                 //commandeStatusENCOURS = appDao.createCommande("0", new SimpleDateFormat("dd-MM-yy  HH:mm").format(new Date()), id_client, "ENCOURS");
            }

            pageContext.setAttribute("commandeStatusENCOURS", commandeStatusENCOURS);

            List<LigneCommande> listLigneCommande = appDao.listerLigneCommande(commandeStatusENCOURS.getId_commande());
            pageContext.setAttribute("listLigneCommande", listLigneCommande);

            //Produits ???????
            //List<Produit> listProduit = appDao.listerProduitParLigneCommande(listLigneCommande);
            //pageContext.setAttribute("listProduit", listProduit);

        %>         

        ID_Client  -    <%= session.getAttribute("id_client")%>
        <%= request.getAttribute("id_client")%>
        <%= pageContext.getAttribute("id_client")%>

        Nom Client : <%= appDao.getClient(id_client).getNom()%>
        Prenom Client :  <%= appDao.getClient(id_client).getPrenom()%>

        <div class="container">
            <h2> Historique -- Table commandes archivées </h2>
            <p> Cette table permet d'afficher la liste des commandes PAYE et LIVRE:</p>            
            <table class="table">
                <thead>
                    <tr>
                        <th>id_commande</th>
                        <th>total</th>
                        <th>date_commande</th>
                        <th>id_client</th>
                        <th>etat_cmd</th>
                    </tr>
                </thead>

                <tbody>
                    <c:forEach var="commande" items="${pageScope.listeCommandesStatusPL}">  
                        <tr>
                            <td>${commande.id_commande}</td>
                            <td>${commande.total}</td>
                            <td>${commande.date_commande}</td>
                            <td>${commande.id_client}</td>
                            <td>${commande.etat_cmd}</td>
                        </tr>
                    </c:forEach>  
                </tbody>
            </table>
        </div>    

        <p> -------------------------------------------------------  </p>

        <div class="container">
            <h2>Table commande ENCOURS </h2>
            <p> Cette table permet d'afficher la commande ENCOURS : <% if (appDao.verifExistCommandeEnCours(id_client) != null) {
                    out.print(appDao.verifExistCommandeEnCours(id_client).getId_commande());
                }  %> </p>            

            <table class="table">
                <thead>
                    <tr>
                        <th>photo</th>
                        <th>nom</th>
                        <th>description </th>
                        <th>TVA</th>                       
                        <th>prix unitaire</th>
                        <th>discount</th>
                        <th>quantite</th>
                        <th>promotion</th>
                        <th>prixsoustotal</th>
                        <th>ID_ligneCmd</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>

                <script type="text/javascript">

                    $(window).load(function () {
                        $(":input").bind('keyup mouseup', function () {
                            myFunction($(this).attr('class'));
                        });
                    });

                    function myFunction(compteur) {

                        $.ajax({
                            url: "http://<%=com.test.util.ServerHostPort.getHostDomainName()+":"+com.test.util.ServerHostPort.PORT%>/ServletController?commande=calculPanier&id_lignecommande=" + $('#id_lignecommande' + compteur).html() + "&quantite=" + $('#id_quantite' + compteur).val(),
                            type: 'post',
                            dataType: 'json',
                            success: function (data) {
                                $('#id_soustotal' + compteur).html(data.id_soustotal);
                                
                                $('#id_tva_vingt1').html(data.id_tva_vingt1);
                                $('#id_tva_vingt2').html(data.id_tva_vingt2);
                                $('#id_tva_dix1').html(data.id_tva_dix1);
                                $('#id_tva_dix2').html(data.id_tva_dix2);
                                $('#id_tva_cinq1').html(data.id_tva_cinq1);
                                $('#id_tva_cinq2').html(data.id_tva_cinq2);
                                $('#id_tva_deux1').html(data.id_tva_deux1);
                                $('#id_tva_deux2').html(data.id_tva_deux2);
                                
                                $('#id_tva_total').html(data.id_tva_total);
                                $('#id_total').html(data.id_total);
                            }
                        });
                    };

                </script>  

                <%

                    if (commandeStatusENCOURS != null && (appDao.verifExistCommandeEnCours(id_client) != null)) {

                        int compteur = 0;

                        for (LigneCommande ligneCommande : listLigneCommande) {
                            compteur = compteur + 1;

                            System.out.println("DEBUG code0: MyBagCommande :" + (appDao.getProduit(ligneCommande.getId_produit())));
                            System.out.println("DEBUG code1: MyBagCommande :" + ligneCommande);

                            String prix_unitaire = (appDao.getProduit(ligneCommande.getId_produit())).getPrix_unitaire();

                            String quantite = ligneCommande.getQuantite();

                            String promotion = ligneCommande.getPromotion();

                            String prix_soustotal = ligneCommande.getPrix_soustotal();

                                     
                            BigDecimal bd = new  BigDecimal(prix_soustotal);
                            BigDecimal displayVal = bd.setScale(10, RoundingMode.HALF_EVEN);
                            NumberFormat frdCostFormat = NumberFormat.getCurrencyInstance(Locale.FRANCE);
                            String moneyPrix_sousTotalString = frdCostFormat.format(displayVal.doubleValue()); 

                            int id_lignecommande = ligneCommande.getId_lignecommande();
                            
                            out.write("<tr>"
                                    + "<td><img src =http://"+com.test.util.ServerHostPort.getHostDomainName()+":"+com.test.util.ServerHostPort.PORT+"/" +(appDao.getProduit(ligneCommande.getId_produit())).getPhoto()+ " class=\"share-picture img-responsive \" alt = \" ALT_PHOTO\" > </td>"
                                    + "<td>" + (appDao.getProduit(ligneCommande.getId_produit())).getNom() + "</td>"
                                    + "<td>" + (appDao.getProduit(ligneCommande.getId_produit())).getDescription() + " </td>"
                                    + "<td>" + (appDao.getProduit(ligneCommande.getId_produit())).getTVAproduit() + "%</td>"
                                    + "<td>" + prix_unitaire + "</td>"
                                    + "<td>" + (appDao.getProduit(ligneCommande.getId_produit())).getDiscount() + "</td>"
                                    + "<td>  <input type=\"number\" class=\"" + compteur + "\" id=\"id_quantite" + compteur + "\" value=\"" + quantite + "\"  min=\"1\" max=\"3\" />  </td>"
                                    + "<td>" + promotion + "% </td>"
                                    + "<td> <label id=\"id_soustotal" + compteur + "\">" + moneyPrix_sousTotalString + "</label>  </td>"
                                    + "<td> <label id=\"id_lignecommande" + compteur + "\">" + id_lignecommande + "</label>  </td>"
                                    + "<td>  "
                                    + "<form method=\"POST\" action=\"ServletController\" >"
                                    + " <input type=\"hidden\" name=\"commande\" value=\"DeleteLigneCommande\"/>"
                                    + " <input type=\"hidden\" name=\"id_lignecommande\" value=\"" + id_lignecommande + "\"/> "
                                    + "<button type=\"submit\" class=\"button add-btn add pull-right\">Delete</button> "
                                    + "</form> "
                                    + "</td>"
                                    + "</tr>");
                        }
                    }

                %>

                </tbody>
            </table>
                
            -----------------------------------------------------------------------  

            <% 
                
                if (appDao.verifExistCommandeEnCours(id_client) != null) {
                    out.print(appDao.verifExistCommandeEnCours(id_client).toString());
                }
            
            %>

            <table class="table">
                <thead>
                    <tr>
                        <th>Informations sur la commande ENCOURS </th>
                        <th>Valeur</th>
                    </tr>
                </thead>

                <tbody>
                    <tr>
                        <td>Commande.id_commande  </td>
                        <td> 
                            <% if (appDao.verifExistCommandeEnCours(id_client) != null) {
                                out.print(appDao.verifExistCommandeEnCours(id_client).getId_commande());
                            }  %> 
                        </td> 
                    </tr>


                    <tr>
                        <td>total TVA 20%  </td>
                        <td>
                            <label id="id_tva_vingt1">                           
                            <% 
                                if (appDao.verifExistCommandeEnCours(id_client) != null) {
                                int id_cmd =  appDao.verifExistCommandeEnCours(id_client).getId_commande();
                                String total_tva = appDao.calculTotalTVAproduit(id_cmd, "20");
                                out.print(total_tva);
                            }  
                            %> 
                            </label> 
                        </td> 
                    </tr> 
                    
                    <tr>
                        <td>Prix total  20%  </td>
                        <td>
                            <label id="id_tva_vingt2"> 
                            <% if (appDao.verifExistCommandeEnCours(id_client) != null) {
                                int id_cmd =  appDao.verifExistCommandeEnCours(id_client).getId_commande();
                                String prix_tva = appDao.clculerPrixTotalTVA(id_cmd, "20");
                                out.print(prix_tva);
                            }  
                            %> 
                            </label>
                        </td> 
                    </tr>   
                    
                     <tr>
                        <td>total TVA 10%  </td>
                        <td>
                            <label id="id_tva_dix1"> 
                            <% if (appDao.verifExistCommandeEnCours(id_client) != null) {
                                int id_cmd =  appDao.verifExistCommandeEnCours(id_client).getId_commande();
                                    String total_tva = appDao.calculTotalTVAproduit(id_cmd, "10");
                                out.print(total_tva);
                            }  %> 
                            </label>   
                         </td> 
                    </tr> 
                    
                    <tr>
                        <td>Prix total  10%  </td>
                        <td> 
                            <label id="id_tva_dix2"> 
                            <% if (appDao.verifExistCommandeEnCours(id_client) != null) {
                                int id_cmd =  appDao.verifExistCommandeEnCours(id_client).getId_commande();
                                String prix_tva = appDao.clculerPrixTotalTVA(id_cmd, "10");
                                out.print(prix_tva);
                                
                            }  %> 
                            </label>
                        </td> 
                    </tr> 
                    

                    <tr>
                        <td>total TVA 5,5%  </td>
                        <td>
                            <label id="id_tva_cinq1"> 
                            <% if (appDao.verifExistCommandeEnCours(id_client) != null) {
                                int id_cmd =  appDao.verifExistCommandeEnCours(id_client).getId_commande();
                                String total_tva = appDao.calculTotalTVAproduit(id_cmd, "5.5");
                                out.print(total_tva);
                                
                            }  %> 
                            </label>
                        </td> 
                    </tr> 
                    
                    <tr>
                        <td>Prix total  5,5%  </td>
                        <td> 
                            <label id="id_tva_cinq2"> 
                            <% if (appDao.verifExistCommandeEnCours(id_client) != null) {
                                int id_cmd =  appDao.verifExistCommandeEnCours(id_client).getId_commande();
                                String prix_tva = appDao.clculerPrixTotalTVA(id_cmd, "5.5");
                                out.print(prix_tva);
                            }  %> 
                            </label>
                            </td> 
                    </tr>                     
                    
                    
                    <tr>
                        <td>total TVA 2,1%  </td>
                        <td> 
                            <label id="id_tva_deux1"> 
                            <% if (appDao.verifExistCommandeEnCours(id_client) != null) {
                               int id_cmd =  appDao.verifExistCommandeEnCours(id_client).getId_commande();
                                    String total_tva = appDao.calculTotalTVAproduit(id_cmd, "2.1");
                                out.print(total_tva);
                                
                            }  %> 
                            </label>
                            </td> 
                    </tr>  
                     <tr>
                        <td>Prix total  2,1%  </td>
                        <td>
                            
                            <label id="id_tva_deux2">
                            <% if (appDao.verifExistCommandeEnCours(id_client) != null) {
                                int id_cmd =  appDao.verifExistCommandeEnCours(id_client).getId_commande();
                                String prix_tva = appDao.clculerPrixTotalTVA(id_cmd, "2.1");
                                out.print(prix_tva);
                            }  %> 
                            </label>
                            </td> 
                    </tr>                     
                    
                    
                    
                    <tr>
               
                        <td>Total de tous les TVA</td>
                        
                        <td> 
                          <label id="id_tva_total">
                            <% if (appDao.verifExistCommandeEnCours(id_client) != null) {
                                int id_cmd =  appDao.verifExistCommandeEnCours(id_client).getId_commande();
                                String prix_tva = appDao.clculerTotalTousTVA(id_cmd);
                                out.print(prix_tva);
                            }  %> 
                          </label>
                             
                         </td> 
                    </tr>                       

                    <tr>
                        <td>Commande.total  </td>
                        <td> 
                            <label id="id_total">
                                <% if (appDao.verifExistCommandeEnCours(id_client) != null) {

                                        BigDecimal bd = new BigDecimal(appDao.verifExistCommandeEnCours(id_client).getTotal());
                                        BigDecimal displayVal = bd.setScale(2, RoundingMode.HALF_EVEN);
                                        NumberFormat frdCostFormat = NumberFormat.getCurrencyInstance(Locale.FRANCE);
                                        String moneyString = frdCostFormat.format(displayVal.doubleValue());
                                        out.print(moneyString);
                                    }
                                %>   
                            </label>  
                        </td>
                    </tr>

                    <tr>
                        <td>Commande.date_commande </td>
                        <td> <% if (appDao.verifExistCommandeEnCours(id_client) != null) {
                                out.print(appDao.verifExistCommandeEnCours(id_client).getDate_commande());
                            } %> </td>
                    </tr>

                    <tr>
                        <td>Commande.id_client  </td>
                        <td> <% if (appDao.verifExistCommandeEnCours(id_client) != null) {
                                out.print(appDao.verifExistCommandeEnCours(id_client).getId_client());
                            } %> </td>
                    </tr>

                    <tr>
                        <td>Commande.etat_cmd  </td>
                        <td> <% if (appDao.verifExistCommandeEnCours(id_client) != null) {
                                out.print(appDao.verifExistCommandeEnCours(id_client).getEtat_cmd());
                            }%> </td>
                    </tr>

                    <tr>
                        <td>Envoyer </td>
                        <td>   
                            <form method="POST" action="ServletController">
                                <input type="hidden" name="commande" value="commander" id="commande" />

                                <input type="hidden" name="id_client" value="<%= session.getAttribute("id_client")%>"/>
                                <input type="hidden" name="id_commande" value="<%  if (appDao.verifExistCommandeEnCours(id_client) != null) {
                                        appDao.verifExistCommandeEnCours(id_client).getId_commande();
                                    }%>"/>

                                <button type="submit" class="button add-btn add pull-right">PAYER</button>
                            </form> 
                        </td>
                    </tr>

                </tbody>
            </table>
        </div>    

    </body>
</html>
