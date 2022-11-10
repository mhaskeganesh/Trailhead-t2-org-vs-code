trigger Trig_Acc3 on Account (after update) {
    if(Trigger.isAfter && Trigger.isUpdate){
        AccountPhoneHandler.updatePhone(Trigger.newMap, Trigger.oldMap, Trigger.new);
    }
}