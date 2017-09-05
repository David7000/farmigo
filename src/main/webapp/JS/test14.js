var etat = 0;
function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
    document.getElementById("main").style.marginRight = "250px";
    document.body.style.backgroundColor = "rgba(0,0,0,0.0)";
    etat = 1;
}
function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
    document.getElementById("main").style.marginRight = "0";
    document.body.style.backgroundColor = "white";
    etat = 0;
}
function verifEtatNavCart() {
    if (etat === 1) {
        closeNav();
    } else {
        openNav();
    }
}



// Permet de afficher les boutons au démarrage voir SVG !!
function a_OnLoad(indexID) {

    //console.log("DEBUG: load event detected!");
    //alert("DEBUG: load event detected!");

    var r = parseInt(document.getElementById('valeurID' + indexID).innerHTML);

    if (r === 0) {
        $("#idaddbutton" + indexID).show();
        $("#idPlusMoins" + indexID).hide();
    } else {
        $("#idaddbutton" + indexID).hide();
        $("#idPlusMoins" + indexID).show();
    }
}







//   WORKFLOW ACTION icon-caret-up icon-caret-down
//   
// permet d'augmenter ou diminuer la valeur de la quantite dans le Cart
function a_onClickCart(elt, TRow1, id_produit, id_client, id_lignecommande) {

    t = elt.id;  // bouton  target event
   
    // alert("Dans a_onClickCart(elt, TRow1="+TRow1+")  targeti==> "+t+"   id_lignecommande-->"+id_lignecommande);

    var r = parseInt($('#' + t).siblings(".current_quantity").text());

    if ($('#' + t).hasClass("icon-caret-up")) {
        r++;
        fonctionAJAX_updateQuantite(id_lignecommande, r, id_client, id_produit);

    } else if ($('#' + t).hasClass("icon-caret-down")) {
        r--;
        if(r !== 0) { fonctionAJAX_updateQuantite(id_lignecommande, r, id_client, id_produit); }
    }
    
    if (r === 0) {
        deleteTR(TRow1, id_lignecommande, id_produit, id_client);
    }
    
    
    document.getElementById('valeurID' + id_produit).innerHTML = r;
    $('#' + t).siblings(".current_quantity").text(r);  
}




// WORKFLOW ACTION Plus Moins
//
// utilisée par les boutons "Plus Qte Moins" pour faire évoluer la valeur de la quantité
function a_onClickButtonPlusMoins(elt, indexID, id_produit, id_client) {

    t = elt.id;  // target

    var quantite = parseInt(document.getElementById('valeurID' + indexID).innerHTML);

    var id_lignecommande = document.getElementById('id_lignecommande' + indexID).innerHTML;


    if ($('#' + t).hasClass("add_one")) {
        quantite++;
        fonctionAJAX_updateQuantite(id_lignecommande, quantite, id_client, id_produit);
        
        
    } else if ($('#' + t).hasClass("minus_one")) {
        quantite--;
        if(quantite !== 0) { fonctionAJAX_updateQuantite(id_lignecommande, quantite, id_client, id_produit); }
    }
    
    
    if (quantite === 0 && t === "idd2" + indexID) {
        $("#idaddbutton" + indexID).show();
        $("#idPlusMoins" + indexID).hide();
        
        deleteTR('idtr'+id_produit, id_lignecommande, id_produit, id_client);   
    }
   
    document.getElementById('valeurID' + indexID).innerHTML = quantite;
    document.getElementById('id-current_quantity' + id_produit).innerHTML = quantite;

    // alert("targeti==> " + t + "   indexID= "+ indexID+ "   id_lignecommande= "+id_lignecommande+ " id_produit="+id_produit+"id_client="+id_client+"   quantite= "+quantite);
}




//  WORKFLOW ACTION DELETE
function deleteTR(buttonTR, id_lignecommande, id_produit, id_client) {
    
    //  alert('deleteTR(buttonTR='+buttonTR+', id_lignecommande='+id_lignecommande+',  id_produit='+id_produit+', id_client='+id_client+')');

    fonctionDELETE(id_lignecommande, id_client);
    
    $("#idaddbutton" + id_produit).show();
    $("#idPlusMoins" + id_produit).hide();

    document.getElementById("ID_cartpane").removeChild(document.getElementById(buttonTR));
    
}



// WORKFLOW ACTION ADD
//
// permet de gerer l'event Add
function onClickAdd(target, indexID, id_produit, id_client, prix_unitaire, photo, quantite) {
    
    onClickboutonADD(target, indexID); 
    
    // un appel  AJAX 
    fonctionADD(target, id_produit , id_client ); 
    
    // I- Methode 1 : 
    // setTimeout( function(){ ajouterUneLigneCommandeDansCart(id_produit, id_produit, id_client,  quantite, prix_unitaire,  photo);  }, 100);
   
    // II- Methode 2 :
    // Le processus principal stock le données du context dans la memoire sessionStorage
    //  https://developer.mozilla.org/fr/docs/Web/API/Window/sessionStorage
    //  
    sessionStorage.setItem('id_produit', id_produit);
    sessionStorage.setItem('id_client', id_client);
    sessionStorage.setItem('quantite', quantite);
    sessionStorage.setItem('prix_unitaire', prix_unitaire);
    sessionStorage.setItem('photo', photo);
    
     loaderSpinner(); 
}

function loaderSpinner()  {
     
     var div_loaderSpinner = document.createElement('div');
     div_loaderSpinner.setAttribute('class', 'loaderspinner');
     
     document.getElementById('ID_cartpane').appendChild(div_loaderSpinner);
}


// Normalement il faut utiliser le Web Storage ou la base IndexDB du navigateur pour stocker les données du STATE du CONTEXT local
function afficheLigneCommandeAlaPlaceDuSpinner() {
  
    ajouterUneLigneCommandeDansCart(sessionStorage.getItem('id_produit'), sessionStorage.getItem('id_produit'), sessionStorage.getItem('id_client'),  sessionStorage.getItem('quantite'), sessionStorage.getItem('prix_unitaire'),  sessionStorage.getItem('photo'));
    
    sessionStorage.clear();
    
    document.getElementById("ID_cartpane").removeChild(document.getElementsByClassName('loaderspinner')[0]);
    
}




// Modifie l'apparence au niveau HTML passe du bouton "Add" au deux boutons "Moins  Quantité   Plus"
function onClickboutonADD(elt, indexID) {

    t = elt.id;  // element HTML target

    var quantite = 0;

    if (t === "idaddbutton_id3" + indexID) {
        quantite++;
        $("#idaddbutton" + indexID).hide();
        $("#idPlusMoins" + indexID).show();
    }
    document.getElementById('valeurID' + indexID).innerHTML = quantite;

    //alert("onClickboutonADD :::>  targeti==> " + t + "   indexID= "+ indexID+ "   r= "+quantite);
}





// FUSION  1  et  (3 et 6) ---> WORFLOW ACTION PLUS_MOINS
//  
// Permet de mettre à jour la valeur de la quantité coté serveur,  lorsqu'on appuie sur les boutons "Plus Moins" 
function fonctionAJAX_updateQuantite(id_lignecommande, quantite, id_client, id_produit) {

    //alert("fonctionAJAX_updateQuantite("+id_lignecommande+", "+quantite+", "+id_client+", "+id_produit+")");

    $.ajax({
        url: "http://localhost:8084/ServletController?commande=calculPanier&id_lignecommande=" + id_lignecommande + "&quantite=" + quantite+"&id_client="+id_client,
        type: 'post',
        dataType: 'json',
        success: function (data) {
            $('#id-prix_soustotal-side-cart-price-2829' + id_produit).html(data.id_soustotal);
            
            $('#id_nbrproduitsdanspanier').html(data.id_nbrproduitsdanspanier);
            $('#id-total-fin').html(data.id_total);
            $('#id_countlignecmd').html(data.id_countlignecmd);
           
        }
    });
      
}


//  FUSION 2 et (3 et 6) ---> WORFLOW ACTION DELETE
//
// Permet de supprimer "DELETE" une lignecommande coté serveur 
function fonctionDELETE(id_lignecommande, id_client) {
  
   // alert("FUSION 2 et (3 et 6) ---> WORFLOW ACTION DELETE");
   
    $.ajax({
        url: "http://localhost:8084/ServletController?commande=DeleteLigneCommande&id_lignecommande=" + id_lignecommande+"&id_client="+id_client+"&page="+1,
        type: 'post',
        dataType: 'json',
        success: function (data) {
            
             $('#id_nbrproduitsdanspanier').html(data.id_nbrproduitsdanspanier);
             $('#id-total-fin').html(data.id_total_fin);
             $('#id_countlignecmd').html(data.id_countlignecmd);
             
        }
    }); 
}


// FUSION (4 et 5) et (3 et 6) --> WORKFLOW ACTON ADD
// 
// Ajoute le produit dans la table lignecommande sur le serveur et dans la base de données MySQL
function fonctionADD(elt, id_produit, id_client) {

    t = elt.id;  // target
   // alert("fonctionADD ::>  targeti==>" + t +"  id_produit="+id_produit+"  id_client="+id_client);
   
    $.ajax({
        url: "http://localhost:8084/ServletController?commande=MyBagButtonAdd" + "&id_produit=" + id_produit + "&id_client=" + id_client,
        type: 'post',
        dataType: 'json',
        success: function (data) {
            $('#id_lignecommande' + id_produit).html(data.id_lignecommande);
            
            $('#id_nbrproduitsdanspanier').html(data.id_nbrproduitsdanspanier);
            $('#id-total-fin').html(data.id_total_fin);
            $('#id_countlignecmd').html(data.id_countlignecmd);
            
            // sleep(600);
            
            afficheLigneCommandeAlaPlaceDuSpinner();
        }
    });
}

function sleep(milliSeconds){
        var startTime = new Date().getTime();
        while (new Date().getTime() < startTime + milliSeconds);
}





// genère un noeud HTML dans le Cart,  avec l'arbre DOM JavaScript
function  ajouterUneLigneCommandeDansCart(idCompteur, id_produit, id_client,  quantite, prix_soustotal, photoProduit) {
       
    //alert("ajouterUneLigneCommandeDansCart(idCompteur= "+idCompteur+" , id_produit= "+id_produit+" , id_client= "+id_client+", id_lignecommande= "+id_lignecommande+", quantite="+quantite+", prix_soustotal= "+prix_soustotal+" ,  photoProduit= "+photoProduit+") ");
   
    prix_soustotal = prix_soustotal+ " \u20AC";
   
    var id_lignecommande = document.getElementById("id_lignecommande"+id_produit).innerHTML;
    
    
    
    var div_cartrow = document.createElement('div');
    div_cartrow.setAttribute('id', 'idtr'+id_produit);
    div_cartrow.setAttribute('class', 'cart-row');

    var div_columnquantity = document.createElement('div');
    div_columnquantity.setAttribute('class', 'column-quantity');
    
    div_cartrow.appendChild(div_columnquantity);

    var a_quantityincrease = document.createElement('a');
    a_quantityincrease.setAttribute('class', 'quantity-increase icon-caret-up');
    a_quantityincrease.setAttribute('href', '#');
    a_quantityincrease.setAttribute('id', 'idddddd1' + idCompteur);
    a_quantityincrease.setAttribute('onClick', "a_onClickCart(this, 'idtr"+id_produit+"', " + id_produit + ", " + id_client + ", " + id_lignecommande + ")");

    var div_currentquantity = document.createElement('div');
    div_currentquantity.setAttribute('id', 'id-current_quantity' + id_produit);
    div_currentquantity.setAttribute('class', 'current_quantity quantity-value cart-quantity-number text-gray-6');

    var text_currentquantity = document.createTextNode(quantite);
    
    div_currentquantity.appendChild(text_currentquantity);

    var a_quantitydecrease = document.createElement('a');
    a_quantitydecrease.setAttribute('class', 'quantity-decrease icon-caret-down');
    a_quantitydecrease.setAttribute('href', '#');
    a_quantitydecrease.setAttribute('id', 'idddddd2' + idCompteur);
    a_quantitydecrease.setAttribute('onClick', "a_onClickCart(this, 'idtr"+id_produit+"', " + id_produit + ", " + id_client + ", " + id_lignecommande + ")");

    
    div_columnquantity.appendChild(a_quantityincrease);
    div_columnquantity.appendChild(div_currentquantity);
    div_columnquantity.appendChild(a_quantitydecrease);
    
    
    

    var div_columnproducts = document.createElement('div');
    div_columnproducts.setAttribute('class', 'column-products');
    
    div_cartrow.appendChild(div_columnproducts);

    var a_productrow = document.createElement('a');
    a_productrow.setAttribute('href', '/detailProduit.html');
    a_productrow.setAttribute('class', 'product-row');

    div_columnproducts.appendChild(a_productrow);

    var div_pricedroppermodule = document.createElement('div');
    div_pricedroppermodule.setAttribute('id', 'dropper-price-282967b');
    div_pricedroppermodule.setAttribute('class', 'price-dropper-module');

    a_productrow.appendChild(div_pricedroppermodule);

    var div_productimage = document.createElement('div');
    div_productimage.setAttribute('class', 'product-image');

    a_productrow.appendChild(div_productimage);

    var div_imgholder = document.createElement('div');
    div_imgholder.setAttribute('class', 'img-holder');

    div_productimage.appendChild(div_imgholder);

    var img_produit = document.createElement('img');
    img_produit.setAttribute('src', photoProduit);
    img_produit.setAttribute('alt', 'ALT image produit');
    img_produit.setAttribute('style', 'height: 70px; width: 70px; background-color: powderblue;');

    div_imgholder.appendChild(img_produit);

    var div_pricingsavings = document.createElement('div');
    div_pricingsavings.setAttribute('class', 'pricing-savings');
    
    a_productrow.appendChild(div_pricingsavings);

    var div_pricingnormal = document.createElement('div');
    div_pricingnormal.setAttribute('class', 'pricing-normal');

    div_pricingsavings.appendChild(div_pricingnormal);

    var div_prixsoustotal = document.createElement('div');
    div_prixsoustotal.setAttribute('id', 'id-prix_soustotal-side-cart-price-2829'+id_produit);
    div_prixsoustotal.setAttribute('class', 'h3 strong text-gray-6');


    var text_prixsoustotal = document.createTextNode(prix_soustotal);
    div_prixsoustotal.appendChild(text_prixsoustotal);
    
    div_pricingnormal.appendChild(div_prixsoustotal);
    

    var div_columnremove = document.createElement('div');
    div_columnremove.setAttribute('class', 'column-remove');
    
    div_cartrow.appendChild(div_columnremove);
    

    var a_sidecartremove = document.createElement('a');
    a_sidecartremove.setAttribute('class', 'side-cart-remove text-gray-3');
    a_sidecartremove.setAttribute('href', '#');
    a_sidecartremove.setAttribute('id', 'idbtn1');
    a_sidecartremove.setAttribute('onClick', "deleteTR('idtr"+id_produit+"', " + id_lignecommande + ", " + id_produit + ", "+id_client+")");
   
   
    div_columnremove.appendChild(a_sidecartremove);

    var i_iconclose = document.createElement('a');
    i_iconclose.setAttribute('class', 'icon-close');

    a_sidecartremove.appendChild(i_iconclose);

    document.getElementById('ID_cartpane').appendChild(div_cartrow);

}
























//----------------------------------------------------------------------------
//-----------------------------------------------------------------------------






// Met à jour la valeur de id_countlignecmd  avec la valeur provenant de la base MySQL
function loadLabelCountLigneCmd() {

// alert("Dans loadLabelCountLigneCmd() ");
        $.ajax({
           url: "http://localhost:8084/ServletController?commande=countlignecmd",
           type: 'post',
           dataType: 'json',
           success: function (data) {
                $('#id_countlignecmd').html(data.id_countlignecmd);
                
                // alert("3-loadLabelCountLigneCmd");
          }
        });
        
}


// Permet de mettre à jour id_lignecommande : fait une requête AJAX et récupere la nouvelle valeur de id_lignecommande et la positionne dans le HTML dans Label
function updateID_lignecommandeAJAX(elt, id_client, id_produit, indexID) {

    t = elt.id;  // target
 //   alert("updateID_lignecommandeAJAX ::>  targeti==>" + t + "  id_produit=" + id_produit + "  id_client=" + id_client);

    $.ajax({
        url: "http://localhost:8084/ServletController?commande=updateIDlignecommandeAJAX" + "&id_client=" + id_client + "&id_produit=" + id_produit,
        type: 'post',
        dataType: 'json',
        success: function (data) {
            $('#id_lignecommande' + indexID).html(data.id_lignecommande);
            
             // alert("5-updateID_lignecommandeAJAX");
        }
    });

}


// FUSION 3 et 6  --> WORKFLOW ACTON ADD
//
// permet d'afficher le total en bas à droite dans le Cart
function miseajourdutotal(id_client) {
    
    //alert("miseajourdutotal ");
    
    $.ajax({
        url: "http://localhost:8084/ServletController?commande=miseajourdutotal" + "&id_client=" + id_client,
        type: 'post',
        dataType: 'json',
        success: function (data) {
            $('#id_nbrproduitsdanspanier').html(data.id_nbrproduitsdanspanier);
            $('#id-total-fin').html(data.id_total_fin);
            $('#id_countlignecmd').html(data.id_countlignecmd);
            
             //alert("3 et 6-miseajourdutotal");
        }
    });
}
