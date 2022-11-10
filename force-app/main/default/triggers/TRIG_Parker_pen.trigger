trigger TRIG_Parker_pen on Parker_Pen__c (before insert, before update) {
    PenTriggerHandler.updatePen(Trigger.new);
}