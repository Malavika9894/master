public class Standardsetcontrollerclass {
public apexpages.standardsetcontroller setacc{get{
if(setacc == null){
setacc = new apexpages.standardsetcontroller(database.getquerylocator([select id,name,type from account]));
}
return setacc;
}set;}

public List<account> getAccounts(){
setacc.setPageSize(10);
return setacc.getRecords();
}
}