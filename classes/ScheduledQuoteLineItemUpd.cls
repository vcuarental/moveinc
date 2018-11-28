public class ScheduledQuoteLineItemUpd {
	public static void ScheduledQLIUpdMet() {
		list<PriceBookEntry> listPBE = new list<PriceBookEntry>();
        list<PriceBookEntry> updatedPBEs = new list<PriceBookEntry>();
		listPBE = [Select id, name, ListPriceNew__c,UnitPrice,Pricebook2Id  from PriceBookEntry where ListPriceNew__c !=0 and ListPriceNew__c != NULL ];
		PriceBookEntry auxPBe = new PriceBookEntry();
        Quote auxQuote = new Quote();
        map<id,PriceBookEntry> mapPBe = new map<id,PriceBookEntry>();
        map<id,Quotelineitem> mapQLi = new map<id,Quotelineitem>();
        map<id,Quote> mapQuote = new map<id,Quote>();
        list<Quotelineitem> listQLi = new list<Quotelineitem>();
        list<QuoteLineitem> updatedQlis = new list<Quotelineitem>();
        list<Quote> updatedQuotes = new list<Quote>();
        list<Quote> listQuotes = new list<Quote>();
        listQuotes = [Select id, name, status from Quote where status !='Accepted' and status != 'Denied'];
        for (Quote auxQuote2: listQuotes){
            system.debug('*************************** AUXQUOTE: '+auxQuote2);
            mapQuote.put(auxQuote2.id,auxQuote2);
        }
        
        listQLi =[SELECT Aprovisiona__c,Description,Discount,Disparo__c,Id,Id_externo__c,ListPrice,List__c,OpportunityLineItemId,PricebookEntryId,Product2Id,
                  PVP_con_IVA_editable__c,PVP_con_IVA__c,Quantity,QuoteId,ServiceDate,SortOrder,Subtotal,SystemModstamp,Tax__c,TotalPrice,UnitPrice FROM QuoteLineItem];
        for (PriceBookEntry currentpbe : listPBE){
			system.debug('********************************** Este es el PBentry que ha cambiado de precio: '+currentpbe );	
			mapPBe.put(currentpbe.Id,currentpbe);
            
		}
        system.debug('********************************** Recorro el listado de QuoteLineItems para ver cual ha cambiado de precio');
        for (QuoteLineItem auxQLI : listQLi){
            auxPBe= mapPBe.get(auxQLI.PricebookEntryId);
            system.debug('**************** auxPBe: '+auxPBe);
            system.debug('**************** auxQLI: '+auxQLI);
            if (auxPBe !=NULL && (auxPBe.ListPriceNew__c <> auxQLI.UnitPrice)  ){	
            	system.debug('********************************** Quota encontrada con el precio de lista cambiado: '+auxPBe.ListPriceNew__c +' Este es el precio de la quota: '+auxQLI.UnitPrice);
                auxQLI.List__c= auxPBe.ListPriceNew__c;
                auxQLI.A_revisar__c = true;
                auxQuote = mapQuote.get(auxQLI.QuoteId);
                system.debug('************************** ESTA ES LA QUOTA CORRESPONDIENTE AL PBE QUE HA CAMBIADO: '+auxQuote+' DE LA QUOTE LINE ITEM: '+auxQLI);
                if (auxQuote!=NULL){
                	auxQuote.A_revisar__c=true;
                	}
                updatedQlis.add(auxQLI);
                if (!updatedPBes.contains(auxPBe)){
                    system.debug('*************** PBe que no esta listada para actualizar: '+auxPBe);
                    auxPBe.UnitPrice = auxPBe.ListPriceNew__c;
                    auxPBe.ListPriceNew__c = 0;
                    updatedPBes.add(auxPBe);
                	}
                if (!updatedQuotes.contains(auxQuote) && auxQuote != NULL){
                    system.debug('*************** Quota que no esta listada para actualizar: '+auxQuote);
                    updatedQuotes.add(auxQuote);
                }
                
            }
            
        }
        if (!updatedQlis.isEmpty()){
        update updatedQlis;
            }
	system.debug('************************ Lista de Price Book Entries a actualizar: '+updatedPBEs);
        if(!updatedPBEs.isEmpty()){
        	update updatedPBEs;     
        }
        if(!updatedQuotes.isEmpty()){
        update updatedQuotes;
        }
    }
}