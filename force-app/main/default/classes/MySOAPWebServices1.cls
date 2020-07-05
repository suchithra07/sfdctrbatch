global class MySOAPWebServices1 {
    webservice static Id createContact(string firstname, string lastname){
        Contact c = new Contact(lastName = lastname, firstName = firstname);
        insert c;
        return c.Id;
    }
}